import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  String languageCode="en";
  ThemeMode themeMode=ThemeMode.light;

  void changeLanguage(String lang){
    languageCode=lang;
    notifyListeners();
  }

  void changeTheme(ThemeMode theme){
    themeMode=theme;
    notifyListeners();
  }
}