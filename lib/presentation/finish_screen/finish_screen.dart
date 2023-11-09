import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgBackground,
                      height: 330.v,
                      width: 390.h,
                      radius: BorderRadius.circular(375.h),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: EdgeInsets.fromLTRB(16.h, 68.v, 10.h, 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 41.h, vertical: 5.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Spacer(flex: 45),
                                Text("¡Payment made!",
                                    style: theme.textTheme.headlineLarge),
                                Spacer(flex: 23),
                                SizedBox(
                                    height: 90.v,
                                    width: 156.h,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 156.h,
                                                  child: Text(
                                                      "Thank you \ngood trip",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .headlineLarge))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  width: 156.h,
                                                  child: Text(
                                                      "Thank you \ngood trip",
                                                      maxLines: 2,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .headlineLarge)))
                                        ])),
                                Spacer(flex: 30),
                                CustomElevatedButton(
                                    text: "Comments",
                                    margin: EdgeInsets.only(right: 6.h),
                                    onPressed: () {
                                      onTapComments(context);
                                    }),
                                SizedBox(height: 28.v),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtImnotsureback(context);
                                    },
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Im not sure. ",
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: " Back",
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimaryContainer
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ]),
                                        textAlign: TextAlign.left))
                              ])))
                ]))));
  }

  /// Navigates to the experienceScreen when the action is triggered.
  onTapComments(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.experienceScreen);
  }

  /// Navigates to the pasarelaScreen when the action is triggered.
  onTapTxtImnotsureback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.pasarelaScreen);
  }
}
