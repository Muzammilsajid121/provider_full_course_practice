import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier{

  var _themeMode = ThemeMode.light;
  ThemeMode get themeMode => _themeMode;

  void changeTheme(themeMode){
    _themeMode = themeMode;
    notifyListeners();
  }
}