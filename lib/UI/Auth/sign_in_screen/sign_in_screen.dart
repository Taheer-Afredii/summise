import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:summise/Custom/app_button.dart';
import 'package:summise/Custom/custom_textfield.dart';

import '../../../Core/Constant/text_style.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 138.h),
              dmSansText(
                text: "What’s your email?",
                fontSize: 22.sp,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
              SizedBox(height: 14.h),
              mulishText(
                  text:
                      "We need it to search after your account or create a new one",
                  fontSize: 16.sp,
                  color: textColor,
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.w500,
                  maxLines: 2),
              SizedBox(height: 40.h),
              CustomTextField(
                hintText: "Email",
                controller: emailController,
                padding: 0.w,
              ),
              const Spacer(),
              AppButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.menu);
                },
                text: "Next",
                textColor: whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
              SizedBox(height: 62.h),
            ],
          ),
        ),
      ),
    );
  }
}
