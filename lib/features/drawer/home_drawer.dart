import 'package:converter_app/core/app_export.dart';
import 'package:flutter/material.dart';

class home_drawer extends StatelessWidget {
  final List drawer_content = [
    ["Distance", ImageConstant.imgImage16, AppRoutes.Distance],
    ["Speed", ImageConstant.imgImage12, AppRoutes.Speed],
    ["Temperature", ImageConstant.imgImage13, AppRoutes.Temperature],
    ["Mass", ImageConstant.imgImage14, AppRoutes.Mass],
    ["Time", ImageConstant.imgImage17, AppRoutes.Time]
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        Container(
          //Insert lang gi icon kung kinahanglan
          margin: EdgeInsets.only(bottom: 10),
          padding: EdgeInsets.all(20),
          color: Colors.blue[600],
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        ListView.builder(
            itemCount: drawer_content.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return DrawerList(
                  destination: drawer_content[index][0],
                  userImage: drawer_content[index][1],
                  onTap: () {
                    Navigator.pushNamed(context, drawer_content[index][2]);
                  });
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
      leading: CustomImageView(
        imagePath: userImage,
        fit: BoxFit.contain,
        height: 29.v,
        width: 34.h,
        margin: EdgeInsets.only(
          left: 13.h,
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
