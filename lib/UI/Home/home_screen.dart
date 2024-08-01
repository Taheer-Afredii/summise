import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/assets.dart';
import 'package:summise/Core/Routes/app_routes.dart';

import '../../Core/Constant/colorss.dart';
import '../../Custom/app_button.dart';
import '../../Custom/custom_textfield.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 119.h),
            Image.asset(
              textLogo,
              height: 311.h,
              width: 332.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: CustomTextField(
                hintText: "Enter your username",
                controller: userNameController,
              ),
            ),
            SizedBox(height: 18.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: CustomTextField(
                hintText: "Enter your password",
                controller: passwordController,
              ),
            ),
            SizedBox(height: 38.h),
            AppButton(
              height: 43.h,
              width: 112.w,
              text: "Login",
              isBorder: true,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signIn);
              },
            ),
            SizedBox(height: 4.h),
            AppButton(
              height: 40.h,
              width: 97.w,
              text: "Sign Up",
              isBorder: true,
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signUp);
              },
            ),
          ],
        ),
      ),
    );
  }
}
