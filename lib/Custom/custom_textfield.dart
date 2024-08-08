import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/UI/Auth/auth_provider.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.height,
    this.width,
    this.padding,
    this.hintColor,
    this.hintWeight,
    this.radius,
  });

  final String hintText;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final double? padding;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      // textAlign: TextAlign.center,s
      // maxLines: 10 ,
      style: TextStyle(
        color: whiteColor,
        fontSize: 15.sp,
        fontFamily: "Mulish",
        fontWeight: FontWeight.w400,
      ),
      decoration: InputDecoration(
        hintText: hintText,
        // suffixIcon: const SizedBox(),
        fillColor: textFieldColor,
        filled: true,
        // contentPadding: EdgeInsets.symmetric(vertical: 0.h, horizontal: 16.w),
        // isDense: true,

        hintStyle: TextStyle(
          color: hintColor ?? textFieldHintColor,
          fontSize: 15.sp,
          fontFamily: "Mulish",
          fontWeight: hintWeight ?? FontWeight.w400,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textFieldBoderColor,
          ),
          borderRadius: BorderRadius.circular(radius ?? 12.r),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: textFieldBoderColor,
          ),
          borderRadius: BorderRadius.circular(radius ?? 12.r),
        ),
      ),
    );
  }
}

class PasswordField extends StatelessWidget {
  const PasswordField({
    super.key,
    required this.hintText,
    required this.controller,
    this.height,
    this.width,
    this.padding,
    this.hintColor,
    this.hintWeight,
    this.radius,
  });

  final String hintText;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final double? padding;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, model, child) {
      return TextFormField(
        controller: controller,
        obscureText: !model.isPasswordVisible,
        style: TextStyle(
          color: whiteColor,
          fontSize: 15.sp,
          fontFamily: "Mulish",
          fontWeight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          fillColor: textFieldColor,
          filled: true,
          hintText: hintText,
          suffixIcon: GestureDetector(
            onTap: () {
              model.togglePasswordVisibility();
            },
            child: Padding(
              padding: EdgeInsets.only(right: 10.h),
              child: Icon(
                model.isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off,
                color: const Color(0xFFF8F8F8),
              ),
            ),
          ),
          hintStyle: TextStyle(
            color: hintColor ?? Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: whiteColor,
            fontSize: 15.sp,
            fontFamily: "Mulish",
            fontWeight: hintWeight ?? FontWeight.w400,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textFieldBoderColor,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: textFieldBoderColor,
            ),
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
      );
    });
  }
}

class RecordingTextField extends StatelessWidget {
  const RecordingTextField(
      {super.key,
      required this.hintText,
      required this.controller,
      this.height,
      this.width,
      this.horizontalPadding,
      this.verticalPadding,
      this.hintColor,
      this.hintWeight,
      this.radius,
      this.textAlign,
      this.isShowmenuButton = false,
      this.onMenuIconTap});

  final String hintText;
  final TextEditingController controller;
  final double? height;
  final double? width;
  final double? horizontalPadding;
  final double? verticalPadding;
  final Color? hintColor;
  final FontWeight? hintWeight;
  final double? radius;
  final bool? isShowmenuButton;
  final VoidCallback? onMenuIconTap;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Consumer<AuthProvider>(builder: (context, model, child) {
      return SizedBox(
        height: height ?? 520.h,
        child: TextFormField(
          controller: controller,
          textAlign: textAlign ?? TextAlign.start,
          maxLines: 20,
          style: TextStyle(
            color: blackColor,
            fontSize: 15.sp,
            fontFamily: "Mulish",
            fontWeight: FontWeight.w400,
          ),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(
                horizontal: horizontalPadding ?? 20.w,
                vertical: verticalPadding ?? 100.h),
            fillColor: const Color(0xFFD9D9D9),
            filled: true,
            hintText: hintText,
            // suffixIcon: isShowmenuButton == true
            //     ? GestureDetector(
            //         onTap: onMenuIconTap ?? () {},
            //         child: Padding(
            //           padding: EdgeInsets.only(right: 10.h),
            //           child: const Icon(
            //             Icons.menu_rounded,
            //             color: buttonColor,
            //           ),
            //         ),
            //       )
            //     : const SizedBox.shrink(),
            hintStyle: TextStyle(
              color: hintColor ?? blackColor,
              fontSize: 24.sp,
              fontFamily: "Mulish",
              fontWeight: hintWeight ?? FontWeight.w500,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(16.r),
            ),
          ),
        ),
      );
    });
  }
}
