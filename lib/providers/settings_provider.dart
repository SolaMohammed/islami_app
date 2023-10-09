import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier{
  String currentLocale="ar";
  ThemeMode currentMode=ThemeMode.light;
  void setCurrentLocale(String newLocale){
    currentLocale=newLocale;
    notifyListeners();
  }
  void setCurrentMode(ThemeMode newThemeMode){
    currentMode=newThemeMode;
    notifyListeners();
  }

  bool isDark(){
    if(currentMode==ThemeMode.dark) return true;
    return false;
  }
}