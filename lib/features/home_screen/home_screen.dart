import 'package:converter_app/core/app_export.dart';
import 'package:converter_app/features/drawer/home_drawer.dart';
import 'package:converter_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:converter_app/widgets/app_bar/appbar_title.dart';
import 'package:converter_app/widgets/app_bar/appbar_trailing_image.dart';
import 'package:converter_app/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        drawer: home_drawer(),
        body: SizedBox(
          width: mediaQueryData.size.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 23.v),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25.h,
                vertical: 18.v,
              ),
              child: Column(
                children: [
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage12,
                    something: "Speed",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Speed);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage13,
                    something: "Temperature",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Temperature);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage14,
                    something: "Mass",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Mass);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage15,
                    something: "Storage (bytes)",
                    onTap: () {
                      //Navigator.pushNamed(context,AppRoutes.Distance);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage16,
                    something: "Distance",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Distance);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage17,
                    something: "Time",
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.Time);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage18,
                    something: "...",
                    onTap: () {
                      //Navigator.pushNamed(context,AppRoutes.Distance);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage18,
                    something: "...",
                    onTap: () {
                      //Navigator.pushNamed(context,AppRoutes.Distance);
                    },
                  ),
                  SizedBox(height: 16.v),
                  _buildButton(
                    context,
                    userImage: ImageConstant.imgImage18,
                    something: "...",
                    onTap: () {
                      //Navigator.pushNamed(context,AppRoutes.Distance);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 100.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenuIcon,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 44.v,
          bottom: 40.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "Home",
          margin: EdgeInsets.fromLTRB(27.h, 45.v, 23.h, 1.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgHomeIcon,
          margin: EdgeInsets.only(
            right: 27.h,
            top: 44.v,
            bottom: 40.v,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Button template

  Widget _buildButton(
    BuildContext context, {
    required String userImage,
    required String something,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: Color.fromARGB(255, 89, 94, 126),
      child: Container(
        margin: EdgeInsets.only(left: 1.h),
        padding: EdgeInsets.symmetric(
          horizontal: 5.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomImageView(
              imagePath: userImage,
              fit: BoxFit.contain,
              height: 29.v,
              width: 34.h,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 2.v,
                bottom: 2.v,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 17.h,
                top: 6.v,
              ),
              child: Text(
                something,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: appTheme.indigo800,
                ),
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              fit: BoxFit.contain,
              height: 29.v,
              width: 34.h,
              margin: EdgeInsets.symmetric(vertical: 2.v),
            ),
          ],
        ),
      ),
    );
  }
}
