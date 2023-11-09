import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';
import 'package:voyager_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class InicioScreen extends StatelessWidget {
  InicioScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    height: mediaQueryData.size.height,
                    width: double.maxFinite,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBackground,
                          height: 330.v,
                          width: 390.h,
                          radius: BorderRadius.circular(375.h),
                          alignment: Alignment.topCenter),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                              margin: EdgeInsets.only(
                                  left: 42.h, right: 42.h, bottom: 5.v),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 15.h, vertical: 9.v),
                              decoration: AppDecoration.fillWhiteA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    SizedBox(height: 56.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                            width: 179.h,
                                            margin: EdgeInsets.only(left: 13.h),
                                            child: Text("Welcome to Voyager",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style: theme
                                                    .textTheme.headlineLarge))),
                                    SizedBox(height: 32.v),
                                    Padding(
                                        padding: EdgeInsets.only(
                                            left: 33.h, right: 28.h),
                                        child: CustomTextFormField(
                                            controller: emailController,
                                            hintText: "Email",
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress)),
                                    SizedBox(height: 41.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 33.h),
                                            child: Text("Password",
                                                style: CustomTextStyles
                                                    .titleMediumPrimaryContainer))),
                                    SizedBox(height: 24.v),
                                    Divider(indent: 33.h, endIndent: 28.h),
                                    SizedBox(height: 56.v),
                                    CustomElevatedButton(
                                        text: "Log in",
                                        onPressed: () {
                                          onTapLogIn(context);
                                        }),
                                    SizedBox(height: 29.v),
                                    RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "Forgot password? ",
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: "Click here",
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimaryContainer
                                                  .copyWith(
                                                      decoration: TextDecoration
                                                          .underline))
                                        ]),
                                        textAlign: TextAlign.left)
                                  ])))
                    ])))));
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
