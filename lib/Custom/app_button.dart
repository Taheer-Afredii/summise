import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';

import '../Core/Constant/text_style.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.height,
    this.width,
    this.text,
    required this.onTap,
    this.textColor,
    this.fontWeight,
    this.isBorder = false,
    this.fontSize,
  });
  final double? height;
  final double? width;
  final String? text;
  final VoidCallback onTap;
  final Color? textColor;
  final FontWeight? fontWeight;
  final bool isBorder;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height ?? 50.h,
        width: width ?? 1.sw,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.r),
          color: buttonColor,
          border: isBorder
              ? Border.all(color: buttonBorderColor, width: 2.w)
              : null,
        ),
        child: Center(
          child: mulishText(
            text: text ?? "Login",
            color: whiteColor,
            fontSize: fontSize ?? 13.sp,
            fontWeight: fontWeight ?? FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
