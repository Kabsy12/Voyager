import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';

class TripScreen extends StatelessWidget {
  const TripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 9.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            onTapTxtBack(context);
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(text: " "),
                                TextSpan(
                                    text: " Back",
                                    style: CustomTextStyles
                                        .bodyLargeOnPrimaryContainer
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 36.v),
                      CustomElevatedButton(
                          text: "Search",
                          margin: EdgeInsets.only(left: 34.h, right: 62.h)),
                      SizedBox(height: 54.v),
                      Padding(
                          padding: EdgeInsets.only(left: 25.h, right: 41.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Places",
                                    style: theme.textTheme.headlineSmall),
                                Text("Hotels",
                                    style: theme.textTheme.headlineSmall)
                              ])),
                      SizedBox(height: 63.v),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 33.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 6.h, vertical: 16.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 49.v),
                                    SizedBox(
                                        height: 249.v,
                                        width: 289.h,
                                        child: Stack(
                                            alignment: Alignment.topLeft,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse4130x142,
                                                  height: 130.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      71.h),
                                                  alignment:
                                                      Alignment.bottomCenter),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse2,
                                                  height: 130.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      71.h),
                                                  alignment: Alignment.topLeft),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse5130x142,
                                                  height: 130.v,
                                                  width: 142.h,
                                                  radius: BorderRadius.circular(
                                                      71.h),
                                                  alignment: Alignment.topRight)
                                            ])),
                                    SizedBox(height: 44.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Mexico + Hotel + tou",
                                              style:
                                                  theme.textTheme.titleLarge),
                                          TextSpan(
                                              text: "r",
                                              style: CustomTextStyles
                                                  .titleLargeRegular_1)
                                        ]),
                                        textAlign: TextAlign.left),
                                    SizedBox(height: 20.v),
                                    Text("450 USD",
                                        style: CustomTextStyles
                                            .titleLargeErrorContainer),
                                    SizedBox(height: 21.v),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtImnotsureback(context);
                                        },
                                        child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "Im not sure. ",
                                                  style: theme
                                                      .textTheme.bodyLarge),
                                              TextSpan(
                                                  text: " Back",
                                                  style: CustomTextStyles
                                                      .bodyLargeOnPrimaryContainer
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline))
                                            ]),
                                            textAlign: TextAlign.left))
                                  ]))),
                      SizedBox(height: 4.v)
                    ])),
            bottomNavigationBar: _buildContinueButton(context)));
  }

  /// Section Widget
  Widget _buildContinueButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Continuar",
        margin: EdgeInsets.only(left: 58.h, right: 56.h, bottom: 13.v),
        onPressed: () {
          onTapContinueButton(context);
        });
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapTxtImnotsureback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }

  /// Navigates to the pasarelaScreen when the action is triggered.
  onTapContinueButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pasarelaScreen);
  }
}
