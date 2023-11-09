import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';
import 'package:voyager_app/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class PasarelaScreen extends StatelessWidget {
  PasarelaScreen({Key? key}) : super(key: key);

  TextEditingController cardNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 21.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("Pay method",
                                        style: theme.textTheme.headlineLarge)),
                                SizedBox(height: 6.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 7.h, right: 15.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgEllipse546x50,
                                                  height: 46.v,
                                                  width: 50.h,
                                                  radius: BorderRadius.circular(
                                                      25.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse6,
                                                  height: 46.v,
                                                  width: 50.h,
                                                  radius: BorderRadius.circular(
                                                      25.h)),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEllipse7,
                                                  height: 46.v,
                                                  width: 50.h,
                                                  radius: BorderRadius.circular(
                                                      25.h))
                                            ]))),
                                SizedBox(height: 77.v),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 7.h, right: 60.h),
                                    child: CustomTextFormField(
                                        controller: cardNameController,
                                        hintText: "Nombre de la tarjeta",
                                        textInputAction: TextInputAction.done,
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 7.h))),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("Numero de la tarjeta",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer)),
                                SizedBox(height: 13.v),
                                Divider(indent: 7.h, endIndent: 60.h),
                                SizedBox(height: 32.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("Fecha de vencimiento",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer)),
                                SizedBox(height: 22.v),
                                Divider(indent: 7.h, endIndent: 60.h),
                                SizedBox(height: 27.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 14.h),
                                    child: Text("Codigo de seguridad",
                                        style: CustomTextStyles
                                            .titleMediumPrimaryContainer)),
                                SizedBox(height: 27.v),
                                Divider(indent: 7.h, endIndent: 60.h),
                                Spacer(),
                                CustomElevatedButton(
                                    text: "Pay",
                                    margin: EdgeInsets.only(right: 6.h),
                                    onPressed: () {
                                      onTapPay(context);
                                    }),
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
                ]))));
  }

  /// Navigates to the finishScreen when the action is triggered.
  onTapPay(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.finishScreen);
  }

  /// Navigates to the tripScreen when the action is triggered.
  onTapTxtImnotsureback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tripScreen);
  }
}
