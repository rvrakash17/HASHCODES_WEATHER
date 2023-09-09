import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/app/data/weather.dart';
import 'package:weather_app/main.dart';

class ThemeController extends GetxController {
  ThemeMode get theme => settings.theme == null
      ? ThemeMode.system
      : settings.theme == true
          ? ThemeMode.dark
          : ThemeMode.light;

  void saveOledTheme(bool isOled) async {
    settings.amoledTheme = isOled;
    isar.writeTxn(() async => isar.settings.put(settings));
  }

  void saveMaterialTheme(bool isMaterial) async {
    settings.materialColor = isMaterial;
    isar.writeTxn(() async => isar.settings.put(settings));
  }

  void saveTheme(bool isDarkMode) async {
    settings.theme = isDarkMode;
    isar.writeTxn(() async => isar.settings.put(settings));
  }

  void changeTheme(ThemeData theme) => Get.changeTheme(theme);

  void changeThemeMode(ThemeMode themeMode) => Get.changeThemeMode(themeMode);
}
