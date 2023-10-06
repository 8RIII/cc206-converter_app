// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
const HomePage({super.key, required String title});

@override
Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[400],
        title: const Text('Home Page'),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
  return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text('Buttons'),
          const Text('Go to Distance Conversion'),
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Button'),
          ),
          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}




