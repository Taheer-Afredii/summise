import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Custom/app_button.dart';
import 'package:summise/Custom/logo_widget.dart';

import '../../Core/Routes/app_routes.dart';
import '../../Custom/menu_button.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SizedBox(
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const LogoWidget(),
              SizedBox(height: 60.h),
              MenuButton(
                buttonName: "Menu",
                text1: "Setting",
                text2: "Account",
                text3: "Subcription",
                text4: "Support",
                onButtonTap: () {},
                onMenuIconTap: (int result) {
                  switch (result) {
                    case 1:
                      Navigator.pushNamed(context, AppRoutes.setting);
                      break;
                    case 2:
                      Navigator.pushNamed(context, AppRoutes.calender);
                      break;
                    case 3:
                      Navigator.pushNamed(context, AppRoutes.subscription);
                      break;
                    case 4:
                      // Navigator.pushNamed(context, AppRoutes.setting);
                      break;
                    // Add more cases as needed
                    default:
                    // Navigator.pop(context);
                  }
                  //
                },
              ),
              SizedBox(height: 209.h),
              AppButton(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.recording);
                },
                text: "Summarise",
                textColor: whiteColor,
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              )
            ],
          ),
        ),
      ),
    );
  }
}
