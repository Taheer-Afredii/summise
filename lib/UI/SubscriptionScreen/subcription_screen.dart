import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';

import '../../Core/Constant/text_style.dart';
import '../../Custom/app_button.dart';

class SubscriptionScreen extends StatelessWidget {
  const SubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            children: [
              SizedBox(height: 168.h),
              mulishText(
                text: "Subscriptions",
                fontSize: 22.sp,
                fontWeight: FontWeight.w600,
                color: textColor,
              ),
              SizedBox(height: 50.h),
              Container(
                height: 180.h,
                width: 1.sw,
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                decoration: BoxDecoration(
                    color: const Color(0XFF868EB0),
                    borderRadius: BorderRadius.all(Radius.circular(12.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubcriptionMenuContainer(
                      text: "Setting",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      text: "Minutes",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      text: "Cost",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      isShowBottomBorder: false,
                      text: "Support",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 26.h),
              Container(
                height: 180.h,
                width: 1.sw,
                margin: EdgeInsets.symmetric(horizontal: 24.w),
                decoration: BoxDecoration(
                    color: const Color(0XFF868EB0),
                    borderRadius: BorderRadius.all(Radius.circular(12.r))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubcriptionMenuContainer(
                      text: "Setting",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      text: "Minutes",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      text: "Cost",
                      onTap: () {},
                    ),
                    SubcriptionMenuContainer(
                      isShowBottomBorder: false,
                      text: "Support",
                      onTap: () {},
                    ),
                  ],
                ),
              ),
              SizedBox(height: 48.h),
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

class SubcriptionMenuContainer extends StatelessWidget {
  const SubcriptionMenuContainer(
      {super.key,
      required this.text,
      required this.onTap,
      this.isShowBottomBorder = true});
  final String text;
  final VoidCallback onTap;
  final bool? isShowBottomBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45.h,
        width: 1.sw,
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        decoration: BoxDecoration(
          border: Border(
            bottom: isShowBottomBorder ?? true
                ? const BorderSide(
                    color: Color(0XFFA8B2DC),
                    width: 0.5,
                  )
                : BorderSide.none,
          ),
        ),
        child: mulishText(
            text: text,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: whiteColor),
      ),
    );
  }
}
