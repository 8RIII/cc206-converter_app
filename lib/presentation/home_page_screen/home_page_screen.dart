import 'package:converterapp/core/app_export.dart';
import 'package:converterapp/widgets/app_bar/appbar_leading_image.dart';
import 'package:converterapp/widgets/app_bar/appbar_title.dart';
import 'package:converterapp/widgets/app_bar/appbar_trailing_image.dart';
import 'package:converterapp/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 18.v,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildUnknown1(
                  context,
                  userImage: ImageConstant.imgImage12,
                  text: "Speed",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildTimeButton(
                  context,
                  userImage: ImageConstant.imgImage13,
                  time: "Temperature",
                ),
              ),
              SizedBox(height: 14.v),
              _buildMassButton(context),
              SizedBox(height: 14.v),
              _buildStorageButton(context),
              SizedBox(height: 14.v),
              _buildLengthButton(context),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildTimeButton(
                  context,
                  userImage: ImageConstant.imgImage21,
                  time: "Time",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildUnknown1(
                  context,
                  userImage: ImageConstant.imgImage18,
                  text: "---",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildUnknown1(
                  context,
                  userImage: ImageConstant.imgImage18,
                  text: "---",
                ),
              ),
              SizedBox(height: 14.v),
              Padding(
                padding: EdgeInsets.only(left: 1.h),
                child: _buildUnknown1(
                  context,
                  userImage: ImageConstant.imgImage18,
                  text: "---",
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 77.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgMenuIcon,
        margin: EdgeInsets.only(
          left: 36.h,
          top: 25.v,
          bottom: 19.v,
        ),
      ),
      actions: [
        AppbarTitle(
          text: "Home",
          margin: EdgeInsets.fromLTRB(27.h, 31.v, 23.h, 3.v),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgImage23,
          margin: EdgeInsets.only(
            left: 10.h,
            top: 26.v,
            right: 50.h,
          ),
        ),
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildMassButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage14,
            height: 26.adaptSize,
            width: 26.adaptSize,
            margin: EdgeInsets.only(left: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              bottom: 2.v,
            ),
            child: Text(
              "Mass",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 26.v,
            width: 23.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStorageButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage15,
            height: 26.v,
            width: 23.h,
            margin: EdgeInsets.only(
              left: 9.h,
              top: 1.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 1.v,
            ),
            child: Text(
              "Storage (bytes)",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 26.v,
            width: 23.h,
            margin: EdgeInsets.only(top: 1.v),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLengthButton(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage22,
            height: 28.v,
            width: 27.h,
            margin: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Text(
              "Length",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 26.v,
            width: 22.h,
            margin: EdgeInsets.only(top: 2.v),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildTimeButton(
    BuildContext context, {
    required String userImage,
    required String time,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 26.v,
            width: 27.h,
            margin: EdgeInsets.only(left: 8.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              bottom: 2.v,
            ),
            child: Text(
              time,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.indigo800,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 26.v,
            width: 23.h,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildUnknown1(
    BuildContext context, {
    required String userImage,
    required String text,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 5.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder3,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomImageView(
            imagePath: userImage,
            height: 29.v,
            width: 31.h,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 7.h,
              top: 3.v,
              bottom: 4.v,
            ),
            child: Text(
              text,
              style: theme.textTheme.bodyLarge!.copyWith(
                color: appTheme.indigo800,
              ),
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgImage3,
            height: 26.v,
            width: 23.h,
            margin: EdgeInsets.symmetric(vertical: 3.v),
          ),
        ],
      ),
    );
  }
}
