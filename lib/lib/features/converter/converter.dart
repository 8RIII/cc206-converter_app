import 'package:converter_app/features/components/calculator_keypad.dart';
import 'package:converter_app/features/converter_codes/converter_class.dart';
import 'package:converter_app/features/drawer/converter_drawer.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class Converter extends StatefulWidget {
  final String measurement;
  const Converter({Key? key, required this.measurement})
      : super(key: key);

  @override
  _ConverterState createState() => _ConverterState(measurement);
}

class _ConverterState extends State<Converter> {
  List savedData = [];
  String measurement;
  String icon = '';
  late String title;
  late ConvertFunct CF;
  late String selectedUnit;
  late String in_unit;
  late String out_unit;
  List<String> unit_list = [];
  String input_value = '0';
  String output_value = '';
  _ConverterState(this.measurement) {
    title = measurement;
    CF = ConvertFunct(measurement);
    in_unit = CF.ini_in_unit;
    out_unit = CF.ini_out_unit;
    unit_list = List.from(CF.unit_list);
    icon = CF.icon;
    _loadSavedData();
  }

  Future<void> _loadSavedData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonString = prefs.getString('myData') ?? '[]';
    List<dynamic> decodedList = jsonDecode(jsonString);

    setState(() {
      savedData = decodedList.map((list) => List<String>.from(list)).toList();
    });
  }

  // Save data to SharedPreferences
  Future<void> _saveData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String jsonString = jsonEncode(savedData);
    prefs.setString('myData', jsonString);
    _loadSavedData(); // Reload the data after saving
  }

  void equals() {
    print('equals');
    setState(() {
      output_value = CF.converter(input_value, in_unit, out_unit).toString();
      if(savedData.length == 10){
        List<String> remove = savedData.removeAt(0);}
      savedData.add([measurement, input_value, in_unit, output_value, out_unit]);
    });
    _saveData();
  }

  void clear() {
    print('clear');
    setState(() {
      input_value = '0';
      output_value = '';
    });
  }

  void backSpace() {
    print('backspace');
    setState(() {
      if (input_value.length == 1) {
        input_value = '0';
      } else if (input_value != '0') {
        input_value = input_value.substring(0, input_value.length - 1);

      }
    });
  }

  void undo() {
    print(savedData);
    if(savedData.isNotEmpty){
      setState(() {
        List<String> removed = savedData.removeLast();
        measurement = removed[0];
        title = measurement;
        CF = ConvertFunct(measurement);
        unit_list = List.from(CF.unit_list);
        icon = CF.icon;

        input_value = removed[1];
        in_unit = removed[2];
        output_value = removed[3];
        out_unit = removed[4];
      });
    }
  }

  void swap() {
    print('swap');
    equals();
    setState(() {
      String placeholder = input_value;
      input_value = output_value;
      output_value = placeholder;

      placeholder = in_unit;
      in_unit = out_unit;
      out_unit = placeholder;
    });
  }

  void addInput(String input) {
    setState(() {
      if (input != '.') {
        if (input_value == '0') {
          input_value = input;
        } else {
          input_value += input;
        }
      } else {
        if (!input_value.contains('.')) {
          input_value += input;
        }
      }
    });
  }

  void getInput(String input) {
    switch (input) {
      case "=":
        equals();
        break;
      case "C":
        clear();
        break;
      case "B":
        backSpace();
        break;
      case "U":
        undo();
        break;
      case "S":
        swap();
        break;
      default:
        addInput(input);
    }
  }

//Dropdown variables
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Text(
                title,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 0),
              child: Image.asset(
                icon,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Color.fromRGBO(39, 76, 119, 1.0),
      ),
      drawer: converter_drawer(converter: measurement),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 140, 195, 235),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Input Values===========================================
                              input_value,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(14.0),
                          margin: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                              child: DropdownButton<String>(
                            value: in_unit,
                            onChanged: (String? newValue) {
                              if(out_unit != newValue){
                                setState(() {
                                  in_unit = newValue!;
                                  equals();
                              });}
                              else{
                                swap();
                                }
                            },
                            items: unit_list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 220, 232, 239),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(30.0),
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                            child: Text(
                              //Output Values===========================================
                              output_value,
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          //color: Colors.white,
                          padding: EdgeInsets.all(14.0),
                          margin: EdgeInsets.all(30.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13.0),
                          ),
                          child: Center(
                              child: DropdownButton<String>(
                            value: out_unit,
                            onChanged: (String? newValue) {
                              if(in_unit != newValue){
                              setState(() {
                                out_unit = newValue!;
                                equals();
                              });}
                              else
                                swap();
                            },
                            items: unit_list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CalculatorKeypad(
            passInput: getInput,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                  ),
                  child: Text(
                    '',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
