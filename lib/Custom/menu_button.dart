import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Core/Constant/colorss.dart';
import '../Core/Constant/text_style.dart';

class MenuButton extends StatelessWidget {
  const MenuButton({
    super.key,
    required this.onButtonTap,
    required this.onMenuIconTap,
    required this.text1,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.buttonName,
  });
  final VoidCallback onButtonTap;
  final void Function(int) onMenuIconTap;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onButtonTap,
      child: Container(
        height: 54.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: buttonBorderColor,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            mulishText(
                text: buttonName, fontSize: 16.sp, fontWeight: FontWeight.w600),
            LayoutBuilder(builder: (context, constraints) {
              return PopupMenuButton<int>(
                position: PopupMenuPosition.under,
                constraints: BoxConstraints(minWidth: 280.w),
                color: whiteColor,
                surfaceTintColor: whiteColor,
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.r),
                ),
                splashRadius: 15,
                elevation: 14,
                shadowColor: const Color(0xFF000000),
                offset: Offset(0, 5.h),
                icon: Icon(Icons.menu_rounded, color: whiteColor, size: 34.sp),
                onSelected: (int result) {
                  onMenuIconTap(result);
                  // Handle the selected menu item here
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<int>>[
                  PopupMenuItem<int>(
                    padding: EdgeInsets.zero,
                    // padding: EdgeInsets.only(left: 10.w),
                    value: 1,
                    child: MenuItemWidget(text: text1),
                  ),
                  PopupMenuItem<int>(
                    padding: EdgeInsets.zero,
                    value: 2,
                    child: MenuItemWidget(text: text2),
                  ),
                  PopupMenuItem<int>(
                    padding: EdgeInsets.zero,
                    value: 3,
                    child: MenuItemWidget(text: text3),
                  ),
                  PopupMenuItem<int>(
                    padding: EdgeInsets.only(left: 14.w),
                    value: 4,
                    height: 10.h,
                    child: mulishText(
                        text: text4,
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF333333)),
                  )
                ],
              );
            }),
          ],
        ),
      ),
    );
  }
}

class MenuItemWidget extends StatelessWidget {
  const MenuItemWidget({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 14),
          child: mulishText(
            text: text,
            fontSize: 16.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0XFF333333),
          ),
        ),
        const Divider(
          thickness: 0.2,
          color: Color(0XFF333333),
        ),
      ],
    );
  }
}
