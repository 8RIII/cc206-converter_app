import 'package:converter_app/core/app_export.dart';
import 'package:converter_app/features/converter_codes/converter_class.dart';
import 'package:flutter/material.dart';

class converter_drawer extends StatelessWidget {
  ConvertFunct CF = ConvertFunct("none");
  late List drawer_content = List.from(CF.convertion_list);
  final String converter;

  converter_drawer({required this.converter});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(20),
          color: Colors.blue[600],
          child: Text(
            converter,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home), //Change icons here
          title: const Text('Home'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.homeScreen);
          }, //Insert navigation action here
        ),
        const Divider(
          height: 20,
          thickness: 1,
          indent: 20,
          endIndent: 20,
          color: Colors.black,
        ),
        ListView.builder(
            itemCount: drawer_content.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              if (drawer_content[index][0] == converter) {
                return SizedBox.shrink();
              }
              return Container(
                margin: EdgeInsets.only(left: 0.h),
                child: DrawerList(
                    destination: drawer_content[index][0],
                    userImage: drawer_content[index][1],
                    onTap: () {
                      Navigator.pushNamed(context, drawer_content[index][2]);
                    }),
              );
            })

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

class DrawerList extends StatelessWidget {
  final userImage;
  final destination;
  final VoidCallback onTap;
  const DrawerList(
      {Key? key,
      required this.destination,
      required this.userImage,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.only(left: 20),
      leading: CustomImageView(
        imagePath: userImage,
        fit: BoxFit.contain,
        height: 29.v,
        width: 34.h,
        margin: EdgeInsets.only(
          right: 0,
          left: 0.h,
          top: 2.v,
          bottom: 2.v,
        ),
      ), //Change icons here
      title: Text(destination),
      onTap: () {
        onTap();
      }, //Insert navigation action here
    );
  }
}
