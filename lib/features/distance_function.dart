import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, super.key});
  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: Colors.grey[600],
      ),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.arrow_back),
            iconSize: 35,
            tooltip: 'Exit',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
        ],
      ),
    );
  }
}

class NumberPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 219, 215, 215),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            children: [
              NumberButton("C", color: Colors.grey[600]),
              NumberButton("-", color: Colors.grey[600]),
              NumberButton("AC", color: Colors.red),
            ]
          ),
          Row(
            children: [
              NumberButton("7"),
              NumberButton("8"),
              NumberButton("9"),
            ],
          ),
          Row(
            children: [
              NumberButton("4"),
              NumberButton("5"),
              NumberButton("4"),
            ],
          ),
          Row(
            children: [
              NumberButton("3"),
              NumberButton("2"),
              NumberButton("1"),
            ],
          ),
          Row(
            children: [
              NumberButton("0"),
              NumberButton("."),
              NumberButton("=", color: Colors.yellow[900]),
            ],
          ),
        ],
      ),
    );
  }
}

class NumberButton extends StatelessWidget {
  final String text;
  final Color? color;

  NumberButton(this.text, {this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4.0),
        child: ElevatedButton(
          onPressed: () {
          
          },
          style: ElevatedButton.styleFrom(
            primary: color ?? Colors.indigo[900], 
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0), 
            ),
          ),
          child: Text(
            text,
            style: TextStyle(fontSize: 35, color: Colors.white),
          ),
        ),
      ),
    );
  }
}


class DistanceFunction extends StatefulWidget {
  const DistanceFunction({Key? key}) : super(key: key);

  @override
  _DistanceFunctionState createState() => _DistanceFunctionState();
}

class _DistanceFunctionState extends State<DistanceFunction> {
  String selectedUnit = "Meter"; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          MyAppBar(
            title: Text(
              'Distance',
              style: Theme.of(context).primaryTextTheme.titleLarge,
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 215, 215)
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: selectedUnit,
                        items: ["Meter", "Kilometer", "Centimeter","Millimeter","Inch","Yards","Feet"].map((String unit) {
                          return DropdownMenuItem<String>(
                            value: unit,
                            child: Text(unit),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedUnit = newValue!;
                          });
                        },
                      ),
                     Icon(
                        Icons.shuffle,
                        size: 30, 
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
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 219, 215, 215),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: selectedUnit,
                        items: ["Meter", "Kilometer", "Centimeter","Millimeter","Inch","Yards","Feet"].map((String unit) {
                          return DropdownMenuItem<String>(
                            value: unit,
                            child: Text(unit),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedUnit = newValue!;
                          });
                        },
                      ),
                      Icon(
                        Icons.shuffle,
                        size: 30,
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
                  padding: EdgeInsets.all(20.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 247, 243, 243),
                  ),
                  child: Text(
                    '0',
                    style: TextStyle(
                      fontSize: 25.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          NumberPad(),
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

