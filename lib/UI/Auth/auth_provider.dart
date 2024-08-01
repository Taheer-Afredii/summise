import 'dart:developer';

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  String? dialCode;
   void setDialCode(String code) {
    dialCode = code;
    log("Selected Country: $dialCode");
    notifyListeners();
  }

  //password visibility
  bool _isPasswordVisible = false;
  bool get isPasswordVisible => _isPasswordVisible;
  void togglePasswordVisibility() {
    _isPasswordVisible = !_isPasswordVisible;
    notifyListeners();
  }
}
