import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:summise/Core/Constant/colorss.dart';
import 'package:summise/Core/Constant/text_style.dart';
import 'package:summise/Custom/Custom_country_picker.dart/custom_drop.dart';
import 'package:summise/UI/Auth/auth_provider.dart';

class NumberTextFieldWidget extends StatelessWidget {
  final TextEditingController numberController;

  const NumberTextFieldWidget({
    super.key,
    required this.numberController,
  });

  @override
  Widget build(BuildContext context) {
    AuthProvider pro = Provider.of<AuthProvider>(context);
    return Container(
      width: 1.sw,
      height: 54.h,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(
          color: const Color(0xFFEAEAEF),
        ),
        // boxShadow: [
        //   BoxShadow(
        //     color: blackColor.withOpacity(0.25),
        //     offset: const Offset(0, 4),
        //     blurRadius: 24,
        //     spreadRadius: 0,
        //   ),
        // ],
      ),
      child: Row(
        children: [
          CountryCodePicker(
            onChanged: (val) {
              pro.setDialCode(val.dialCode!);
            },
            // textStyle: mulishTextStyle(
            //   fontSize: 14.sp,
            //   fontWeight: FontWeight.w500,
            //   color: textColor,
            // ),
            hideMainText: true,
            showFlagMain: true,
            showDropDownButton: true,
            // alignLeft: false,

            // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
            initialSelection: pro.dialCode ?? "US",
            favorite: const ['+39', 'FR'],
            // optional. Shows only country name and flag
            showCountryOnly: false,
            // optional. Shows only country name and flag when popup is closed.
            showOnlyCountryWhenClosed: false,

            // optional. aligns the flag and the Text left
            alignLeft: true,
            flagDecoration: const BoxDecoration(shape: BoxShape.rectangle),
            flagWidth: 20,
            padding: EdgeInsets.zero,
          ),
          // const Icon(Icons.arrow_drop_down),
          VerticalDivider(
            thickness: 1,
            indent: 10.h,
            endIndent: 10.h,
            color: Colors.grey.withOpacity(0.6),
          ),
          Expanded(
            flex: 1,
            child: TextFormField(
                controller: numberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Phone Number",
                    hintStyle: mulishTextStyle(color: textColor)),
                style: mulishTextStyle(color: textColor)),
          )
        ],
      ),
    );
  }
}
