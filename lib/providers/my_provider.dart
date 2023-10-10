import 'package:flutter/material.dart';
import 'package:islami_app/Counter_Screen.dart';
import 'package:islami_app/preference_helper.dart';

class MyProvider extends ChangeNotifier{
  String languageCode="en";
  ThemeMode themeMode=ThemeMode.light;
  double tasbihCounter=33;

  void init()async{
    String? newLang= PrefsHelper.getLanguage();
    changeLanguage(newLang??"en");
    String mode= PrefsHelper.getTheme()??"light";
    if(mode == "light"){
      changeTheme(ThemeMode.light);
    }else{
      changeTheme(ThemeMode.dark);
    }
    double? newCounter= PrefsHelper.getCounter();
    changeCounter(newCounter??33);
  }

  void changeLanguage(String lang){
    languageCode=lang;
    PrefsHelper.saveLanguage(lang);
    notifyListeners();
  }

  void changeTheme(ThemeMode theme){
    themeMode=theme;
    if(theme == ThemeMode.light){
      PrefsHelper.saveTheme("light");
    }else{
      PrefsHelper.saveTheme("dark");
    }
    notifyListeners();
  }

  void changeCounter(double counter){
    tasbihCounter=counter;
    PrefsHelper.saveCounter(counter);
    notifyListeners();
  }
}