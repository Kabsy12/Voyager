import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: theme.colorScheme.onPrimary,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimary,
                    boxShadow: [
                      BoxShadow(
                          color: appTheme.black900.withOpacity(0.25),
                          spreadRadius: 2.h,
                          blurRadius: 2.h,
                          offset: Offset(0, 4))
                    ],
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLogIn),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding:
                        EdgeInsets.symmetric(horizontal: 56.h, vertical: 38.v),
                    child: Column(mainAxisSize: MainAxisSize.min, children: [
                      Spacer(),
                      CustomElevatedButton(
                          text: "Log in",
                          onPressed: () {
                            onTapLogIn(context);
                          }),
                      SizedBox(height: 7.v),
                      RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Don’t have an account? ",
                                style: CustomTextStyles.bodyLargeOnPrimary),
                            TextSpan(
                                text: "Sing up",
                                style: CustomTextStyles.bodyLargeDeeppurpleA700
                                    .copyWith(
                                        decoration: TextDecoration.underline))
                          ]),
                          textAlign: TextAlign.left)
                    ])))));
  }

  /// Navigates to the inicioScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.inicioScreen);
  }
}
