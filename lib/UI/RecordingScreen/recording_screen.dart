import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Custom/app_button.dart';

import '../../Core/Routes/app_routes.dart';
import '../../Custom/custom_textfield.dart';

class RecordingScreen extends StatelessWidget {
  RecordingScreen({super.key});
  final TextEditingController recordingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                SizedBox(height: 108.h),
                RecordingTextField(
                  controller: recordingController,
                  hintText: "Recording...",
                  isShowmenuButton: false,
                ),
                // Container(
                //   height: 520.h,
                //   width: 1.sw,
                //   padding: EdgeInsets.symmetric(horizontal: 24.w) +
                //       EdgeInsets.only(top: 80.h),
                //   decoration: BoxDecoration(
                //     borderRadius: BorderRadius.circular(16.r),
                //     color: const Color(0xFFD9D9D9),
                //   ),
                //   child: SizedBox(
                //     height: 100.h,
                //     child: mulishText(
                //         text: "Recording.....",
                //         fontSize: 24.sp,
                //         color: blackColor,
                //         fontWeight: FontWeight.w200),
                //   ),
                // ),
                SizedBox(height: 51.h),
                AppButton(
                  onTap: () {
                    // Navigator.pushNamed(context, AppRoutes.calender);
                    Navigator.pushNamed(context, AppRoutes.summariseType);
                  },
                  text: "Next",
                  textColor: whiteColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                )
              ],
            ),
          ),
        ));
  }
}
