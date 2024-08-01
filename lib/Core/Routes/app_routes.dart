import 'package:flutter/material.dart';
import 'package:summise/UI/Auth/sign_in_screen/sign_in_screen.dart';
import 'package:summise/UI/Auth/sign_up_screen/sign_up_screen.dart';
import 'package:summise/UI/CalenderScreen/calender_screen.dart';
import 'package:summise/UI/MenuScreen/menu_screen.dart';
import 'package:summise/UI/PrevSummeriseScreen/prevsummerise_screen.dart';
import 'package:summise/UI/SettingScreen/setting_screen.dart';
import 'package:summise/UI/SubscriptionScreen/subcription_screen.dart';

import '../../UI/Home/home_screen.dart';
import '../../UI/RecordingScreen/recording_screen.dart';
import '../../UI/SummariseTypeScreen/summarisetype_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String signIn = '/sign-in';
  static const String signUp = '/sign-up';
  static const String menu = '/menu';
  static const String recording = '/recording';
  static const String calender = '/calender';
  static const String prevSummeriseScreen = '/prev-summerise';
  static const String summariseType = '/summarise-type';
  static const String setting = '/setting';
  static const String subscription = '/subscription';
  //  static const String calender = '/calender';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => HomeScreen(),
      signIn: (context) => SignInScreen(),
      signUp: (context) => SignUpScreen(),
      menu: (context) => const MenuScreen(),
      recording: (context) => const RecordingScreen(),
      calender: (context) => const CalenderScreen(),
      prevSummeriseScreen: (context) => const PrevsummeriseScreen(),
      summariseType: (context) => const SummarisetypeScreen(),
      setting: (context) => const SettingScreen(),
      subscription: (context) => const SubscriptionScreen(),
    };
  }
}
