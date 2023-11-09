import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';
import 'package:voyager_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ExperienceScreen extends StatelessWidget {
  ExperienceScreen({Key? key}) : super(key: key);

  TextEditingController complaintController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 791.v,
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
                          margin: EdgeInsets.fromLTRB(16.h, 68.v, 10.h, 5.v),
                          padding: EdgeInsets.symmetric(
                              horizontal: 41.h, vertical: 5.v),
                          decoration: AppDecoration.fillWhiteA.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder40),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 64.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 43.h),
                                    child: Text("Experiencies",
                                        style: theme.textTheme.headlineLarge)),
                                SizedBox(height: 85.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("Nombre",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer)),
                                SizedBox(height: 8.v),
                                Divider(indent: 7.h, endIndent: 60.h),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("Comentario",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer)),
                                SizedBox(height: 14.v),
                                Divider(indent: 7.h, endIndent: 60.h),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 7.h, right: 60.h),
                                    child: CustomTextFormField(
                                        controller: complaintController,
                                        hintText: "Reclamo",
                                        textInputAction: TextInputAction.done)),
                                Spacer(),
                                CustomElevatedButton(
                                    text: "Send",
                                    margin: EdgeInsets.only(right: 6.h)),
                                SizedBox(height: 28.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
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
                                            textAlign: TextAlign.left)))
                              ])))
                ])),
            bottomNavigationBar: _buildMenuButton(context)));
  }

  /// Section Widget
  Widget _buildMenuButton(BuildContext context) {
    return CustomElevatedButton(
        height: 39.v,
        width: 193.h,
        text: "Menu",
        margin: EdgeInsets.only(left: 101.h, right: 96.h, bottom: 14.v),
        buttonStyle: CustomButtonStyles.fillPrimaryTL19,
        onPressed: () {
          onTapMenuButton(context);
        });
  }

  /// Navigates to the finishScreen when the action is triggered.
  onTapTxtImnotsureback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.finishScreen);
  }

  /// Navigates to the searchScreen when the action is triggered.
  onTapMenuButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
