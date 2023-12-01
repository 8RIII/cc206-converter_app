import 'package:converter_app/features/components/calculator_keypad.dart';
import 'package:converter_app/features/converter_codes/converter_class.dart';
import 'package:converter_app/features/drawer/converter_drawer.dart';
import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  final String measurement;
  final String icon;
  const Converter({Key? key, required this.measurement, required this.icon})
      : super(key: key);

  @override
  _ConverterState createState() => _ConverterState(measurement, icon);
}

class _ConverterState extends State<Converter> {
  final String measurement;
  final String icon;
  late String title;
  late ConvertFunct CF;
  late String selectedUnit;
  late String in_unit;
  late String out_unit;
  late List<String> unit_list;
  String input_value = '0';
  String output_value = '';
  _ConverterState(this.measurement, this.icon) {
    title = measurement;
    CF = ConvertFunct(measurement);
    in_unit = CF.ini_in_unit;
    out_unit = CF.ini_out_unit;
    unit_list = List.from(CF.unit_list);
  }

  void equals() {
    print('equals');
    setState(() {
      output_value = CF.converter(input_value, in_unit, out_unit).toString();
    });
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
    print('undo');
  }

  void swap() {
    print('swap');
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
                              setState(() {
                                in_unit = newValue!;
                              });
                            },
                            items: unit_list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          )
                              // child: Text(
                              //   //Input Units===========================================
                              //   'Test4',
                              //   style: TextStyle(color: Colors.black),
                              // ),
                              ),
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
                              setState(() {
                                out_unit = newValue!;
                              });
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
