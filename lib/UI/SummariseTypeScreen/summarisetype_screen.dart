import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Custom/app_button.dart';
import 'package:summise/Custom/menu_button.dart';

import '../../Core/Constant/colorss.dart';
import '../../Core/Routes/app_routes.dart';
import '../../Custom/custom_textfield.dart';

class SummarisetypeScreen extends StatelessWidget {
  SummarisetypeScreen({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            children: [
              SizedBox(height: 61.h),
              Stack(
                children: [
                  RecordingTextField(
                    controller: controller,
                    hintText: "Recording...",
                    horizontalPadding: 60.w,
                    textAlign: TextAlign.center,
                  ),
                  Positioned(
                    top: 10.h,
                    right: 10.w,
                    child: RecordingScreenMenuButton(
                      text1: "Setting",
                      text2: "Account",
                      text3: "Subcription",
                      text4: "Support",
                      onMenuIconTap: (int result) {
                        switch (result) {
                          case 1:
                            Navigator.pushNamed(context, AppRoutes.setting);
                            break;
                          case 2:
                            Navigator.pushNamed(context, AppRoutes.calender);
                            break;
                          case 3:
                            Navigator.pushNamed(
                                context, AppRoutes.subscription);
                            break;
                          case 4:
                            // Navigator.pushNamed(context, AppRoutes.setting);
                            break;
                          // Add more cases as needed
                          default:
                          // Navigator.pop(context);
                        }
                        //
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23.h),
              MenuButton(
                text1: "Creative",
                text2: "Informal",
                text3: "Formal",
                text4: "Technical",
                buttonName: "Types of Summarise",
                onButtonTap: () {},
                onMenuIconTap: (int result) {},
              ),
              SizedBox(height: 24.h),
              AppButton(
                onTap: () {
                  // Navigator.pushNamed(context, AppRoutes.recording);
                },
                text: "Summarise",
                textColor: whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ),
    );
  }
}
