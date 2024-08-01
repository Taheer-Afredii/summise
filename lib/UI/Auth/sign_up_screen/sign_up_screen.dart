import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Constant/text_style.dart';
import 'package:summise/Core/Routes/app_routes.dart';
import 'package:summise/Custom/app_button.dart';

import '../../../Custom/custom_textfield.dart';
import '../../../Custom/phone_number_field.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final GlobalKey _customTextFieldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: SizedBox(
          width: 1.sw,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              children: [
                SizedBox(height: 137.h),
                dmSansText(
                    text: "Getting started!",
                    fontSize: 22.sp,
                    color: textColor),
                SizedBox(height: 14.h),
                mulishText(
                  text:
                      "Look like you are new to us! Create an account for a complete experience.",
                  fontSize: 16.sp,
                  color: textColor,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                ),
                SizedBox(height: 40.h),
                CustomTextField(
                  key: _customTextFieldKey,
                  height: 54.h,
                  controller: userNameController,
                  radius: 16.r,
                  hintText: "Username",
                  hintColor: whiteColor,
                  hintWeight: FontWeight.w500,
                  padding: 0.w,
                ),
                SizedBox(height: 40.h),
                CustomTextField(
                  height: 54.h,
                  radius: 16.r,
                  controller: emailController,
                  hintText: "Email",
                  hintColor: whiteColor,
                  hintWeight: FontWeight.w500,
                  padding: 0.w,
                ),
                SizedBox(height: 40.h),
                PasswordField(
                  height: 54.h,
                  radius: 16.r,
                  controller: passwordController,
                  hintText: "Password",
                  hintColor: Colors.white,
                  hintWeight: FontWeight.w500,
                  padding: 0.w,
                ),
                SizedBox(height: 40.h),
                NumberTextFieldWidget(
                  numberController: numberController,
                ),
                SizedBox(height: 63.h),
                AppButton(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.menu);
                    // final RenderBox renderBox =
                    //     _customTextFieldKey.currentContext!.findRenderObject()
                    //         as RenderBox;
                    // final size = renderBox.size;
                    // log("CustomTextField height: ${size.height}");
                  },
                  text: "Next",
                  textColor: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
