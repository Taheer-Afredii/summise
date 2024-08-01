import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';

Text dmSansText({
  required String text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  int? maxLines,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLines,
    style: TextStyle(
      color: color ?? whiteColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: 'DMSans',
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

Text mulishText({
  required String text,
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  TextAlign? textAlign,
  TextDecoration? textDecoration,
  int? maxLines,
}) {
  return Text(
    text,
    textAlign: textAlign ?? TextAlign.start,
    maxLines: maxLines,
    style: TextStyle(
      color: color ?? whiteColor,
      fontSize: fontSize ?? 14.sp,
      fontWeight: fontWeight ?? FontWeight.normal,
      fontFamily: 'Mulish',
      decoration: textDecoration ?? TextDecoration.none,
    ),
  );
}

TextStyle mulishTextStyle({
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
}) {
  return TextStyle(
    color: color ?? whiteColor,
    fontSize: fontSize ?? 14.sp,
    fontWeight: fontWeight ?? FontWeight.normal,
    fontFamily: 'Mulish',
    decoration: TextDecoration.none,
  );
}

class SizeConfig {
  double heightSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.height * value;
  }

  double widthSize(BuildContext context, double value) {
    value /= 100;
    return MediaQuery.of(context).size.width * value;
  }
}
