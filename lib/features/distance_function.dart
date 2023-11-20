import 'package:flutter/material.dart';

class NumberPad extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 219, 215, 215),
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(children: [
            NumberButton("C", color: Colors.grey[600]),
            NumberButton("-", color: Colors.grey[600]),
            NumberButton("AC", color: Colors.red),
          ]),
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
          onPressed: () {},
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
      appBar: AppBar(
        title: const Text('Distance'),
        backgroundColor: Colors.grey[600],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          Container(
            //Insert lang gi icon kung kinahanglan
            margin: EdgeInsets.only(bottom: 10),
            padding: EdgeInsets.all(20),
            color: Colors.grey[600],
            child: Text(
              'Distance',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home), //Change icons here
            title: const Text('home'),
            onTap: () {}, //Insert navigation action here
          ),
          const Divider(
            height: 20,
            thickness: 1,
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          ListTile(
            leading: const Icon(Icons.looks_one), //Change icons here
            title: const Text('Navi1'),
            onTap: () {}, //Insert navigation action here
          ),
          ListTile(
            leading: const Icon(Icons.looks_two), //Change icons here
            title: const Text('Navi2'),
            onTap: () {}, //Insert navigation action here
          )
        ],
      )),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(8.0),
                  margin: EdgeInsets.symmetric(vertical: 0),
                  decoration:
                      BoxDecoration(color: Color.fromARGB(255, 219, 215, 215)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DropdownButton<String>(
                        value: selectedUnit,
                        items: [
                          "Meter",
                          "Kilometer",
                          "Centimeter",
                          "Millimeter",
                          "Inch",
                          "Yards",
                          "Feet"
                        ].map((String unit) {
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
                        items: [
                          "Meter",
                          "Kilometer",
                          "Centimeter",
                          "Millimeter",
                          "Inch",
                          "Yards",
                          "Feet"
                        ].map((String unit) {
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
