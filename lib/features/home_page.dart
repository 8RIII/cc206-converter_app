// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 165, 192, 234),
        title: const Text('Home Page'),
      ),
      body: buildBody(),
    );
  }

  Widget buildBody() {
    const buttonMargin = EdgeInsets.only(
        top: 20, left: 20, right: 20); // Set your desired smaller margin value

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2, // 2 columns and 3 rows
            children: [
              buildButton('assets/icons8-distance-96.png', 'Distance'),
              buildButton('assets/icons8-time-80.png', 'Time'),
              buildButton('assets/icons8-storage-80.png', 'Storage'),
              buildButton('assets/icons8-weight-100.png', 'Weight'),
              buildButton('assets/icons8-temperature-64.png', 'Temperature'),
              buildButton('assets/icons8-speed-64.png', 'Speed'),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildButton(String imagePath, String text) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          // Button click action
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(80, 36),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imagePath,
              width: 50, // Set the width of the image
              height: 50, // Set the height of the image
            ),
            const SizedBox(height: 8),
            Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ],
        ),
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: HomePage(title: 'Flutter App')));
