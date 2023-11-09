import 'package:flutter/material.dart';
import 'package:voyager_app/core/app_export.dart';
import 'package:voyager_app/widgets/custom_elevated_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 19.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    height: mediaQueryData.size.height,
                    width: 389.h,
                    margin: EdgeInsets.only(left: 1.h),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 48.v),
                            child: Text(
                              "Continuar",
                              style: theme.textTheme.titleMedium,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 50.h,
                              vertical: 46.v,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                  text: "Search",
                                  margin: EdgeInsets.only(left: 13.h),
                                ),
                                SizedBox(height: 10.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 99.h),
                                    child: Text(
                                      "Places",
                                      style: theme.textTheme.headlineSmall,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 61.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse2,
                                  height: 130.v,
                                  width: 142.h,
                                  radius: BorderRadius.circular(
                                    71.h,
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Text(
                                  "Mexico",
                                  style: theme.textTheme.headlineSmall,
                                ),
                                SizedBox(height: 57.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse4,
                                  height: 130.v,
                                  width: 142.h,
                                  radius: BorderRadius.circular(
                                    71.h,
                                  ),
                                ),
                                SizedBox(height: 10.v),
                                Text(
                                  "Venezuela",
                                  style: theme.textTheme.headlineSmall,
                                ),
                                SizedBox(height: 34.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgEllipse5,
                                  height: 130.v,
                                  width: 142.h,
                                  radius: BorderRadius.circular(
                                    71.h,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Text(
                                  "Perú",
                                  style: theme.textTheme.headlineSmall,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
