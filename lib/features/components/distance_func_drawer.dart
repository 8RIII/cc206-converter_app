import 'package:flutter/material.dart';

class distance_drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
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
        //Future Destinations
        // ListTile(
        //   leading: const Icon(Icons.looks_one), //Change icons here
        //   title: const Text('Navi1'),
        //   onTap: () {}, //Insert navigation action here
        // ),
        // ListTile(
        //   leading: const Icon(Icons.looks_two), //Change icons here
        //   title: const Text('Navi2'),
        //   onTap: () {}, //Insert navigation action here
        // )
      ],
    ));
  }
}
