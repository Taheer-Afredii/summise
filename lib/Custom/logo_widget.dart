import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Core/Constant/assets.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({
    super.key,
    this.height,
    this.width,
  
  });
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      logo,
      color: const Color(0xFF001E61),
      height:height?? 114.h,
      width:width?? 114.w,
    );
  }
}