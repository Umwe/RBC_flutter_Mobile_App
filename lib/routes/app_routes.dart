import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/conversion_output_screen/conversion_output_screen.dart';
import '../presentation/login_screen/login_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String conversionOutputScreen = '/conversion_output_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/login_screen';

  static Map<String, WidgetBuilder> get routes => {
        loginScreen: LoginScreen.builder,
        conversionOutputScreen: ConversionOutputScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ConversionOutputScreen.builder
      };
}
