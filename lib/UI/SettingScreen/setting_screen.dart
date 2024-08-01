import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Routes/app_routes.dart';

import '../../Core/Constant/text_style.dart';
import '../../Custom/app_button.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

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
                text: "Settings",
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
                        child: SettingDetailWidget(index: index));
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

class SettingDetailWidget extends StatelessWidget {
  const SettingDetailWidget({
    super.key,
    required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66.h,
      padding: EdgeInsets.only(left: 62.w, right: 20.w, top: 10.h),
      margin: EdgeInsets.only(bottom: 4.h),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 168, 175, 217),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              mulishText(
                text: "Setting ${index + 1}",
                fontSize: 15.sp,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
              mulishText(
                text: "Description",
                fontSize: 15.sp,
                fontWeight: FontWeight.w400,
                color: blackColor,
              ),
            ],
          ),
          mulishText(
            text: "9:14 AM",
            fontSize: 11.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xFF3D3D3D),
          ),
        ],
      ),
    );
  }
}
