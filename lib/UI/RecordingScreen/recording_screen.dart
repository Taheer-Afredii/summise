import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Constant/text_style.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:summise/Custom/app_button.dart';

class RecordingScreen extends StatelessWidget {
  const RecordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              SizedBox(height: 108.h),
              Container(
                height: 520.h,
                width: 1.sw,
                padding: EdgeInsets.symmetric(horizontal: 24.w) +
                    EdgeInsets.only(top: 80.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  color: const Color(0xFFD9D9D9),
                ),
                child: SizedBox(
                  height: 100.h,
                  child: mulishText(
                      text: "Recording.....",
                      fontSize: 24.sp,
                      color: blackColor,
                      fontWeight: FontWeight.w200),
                ),
              ),
              SizedBox(height: 51.h),
              AppButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.calender);
                },
                text: "Next",
                textColor: whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ));
  }
}
