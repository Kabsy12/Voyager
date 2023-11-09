import 'package:flutter/material.dart';
import 'package:voyager_app/presentation/log_in_screen/log_in_screen.dart';
import 'package:voyager_app/presentation/inicio_screen/inicio_screen.dart';
import 'package:voyager_app/presentation/search_screen/search_screen.dart';
import 'package:voyager_app/presentation/trip_screen/trip_screen.dart';
import 'package:voyager_app/presentation/pasarela_screen/pasarela_screen.dart';
import 'package:voyager_app/presentation/finish_screen/finish_screen.dart';
import 'package:voyager_app/presentation/experience_screen/experience_screen.dart';
import 'package:voyager_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logInScreen = '/log_in_screen';

  static const String inicioScreen = '/inicio_screen';

  static const String searchScreen = '/search_screen';

  static const String tripScreen = '/trip_screen';

  static const String pasarelaScreen = '/pasarela_screen';

  static const String finishScreen = '/finish_screen';

  static const String experienceScreen = '/experience_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    logInScreen: (context) => LogInScreen(),
    inicioScreen: (context) => InicioScreen(),
    searchScreen: (context) => SearchScreen(),
    tripScreen: (context) => TripScreen(),
    pasarelaScreen: (context) => PasarelaScreen(),
    finishScreen: (context) => FinishScreen(),
    experienceScreen: (context) => ExperienceScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
