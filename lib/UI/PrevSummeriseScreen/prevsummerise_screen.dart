import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Constant/text_style.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:summise/Custom/app_button.dart';
import 'package:summise/Custom/logo_widget.dart';

class PrevsummeriseScreen extends StatelessWidget {
  const PrevsummeriseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 13.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 168.h),
              mulishText(
                text: "Previous Summaries",
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
              SizedBox(height: 200.h),
              Flexible(
                fit: FlexFit.loose,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.summariseType);
                        },
                        child: const SummeriseDetailWidget());
                  },
                ),
              ),
              SizedBox(height: 40.h),
              AppButton(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  text: "Back",
                  textColor: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600),
            ],
          ),
        ),
      ),
    );
  }
}

class SummeriseDetailWidget extends StatelessWidget {
  const SummeriseDetailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      margin: EdgeInsets.only(bottom: 4.h),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 168, 175, 217),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          LogoWidget(height: 40.h, width: 40.w),
          SizedBox(width: 10.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 260.w,
                child: Row(
                  children: [
                    mulishText(
                      text: "Summary",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                    SizedBox(width: 20.w),
                    mulishText(
                      text: "Date",
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                      color: blackColor,
                    ),
                    const Spacer(),
                    mulishText(
                      text: "9:14 AM",
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF3D3D3D),
                    ),
                  ],
                ),
              ),
              mulishText(
                text: "Description",
                fontSize: 12.sp,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
