import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Custom/app_button.dart';
import 'package:summise/Custom/menu_button.dart';

import '../../Core/Constant/colorss.dart';
import '../../Core/Constant/text_style.dart';

class SummarisetypeScreen extends StatelessWidget {
  const SummarisetypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            SizedBox(height: 61.h),
            Container(
              height: 517.h,
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.r),
                color: const Color(0xFFD9D9D9),
              ),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(top: 20.h, right: 20.w),
                        child: Icon(Icons.menu_rounded,
                            color: buttonColor, size: 36.sp),
                      )),
                  SizedBox(height: 57.h),
                  SizedBox(
                    height: 100.h,
                    child: mulishText(
                        text: "Recording.....",
                        fontSize: 24.sp,
                        color: blackColor,
                        fontWeight: FontWeight.w200),
                  ),
                ],
              ),
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
    );
  }
}
