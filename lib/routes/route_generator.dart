import 'package:batch33c/firestore_example/firestore_example.dart';
import 'package:batch33c/formscreen/form_screen.dart';
import 'package:batch33c/login/login_screen.dart';
import 'package:batch33c/navigation/navigation_screen.dart';
import 'package:batch33c/registration/registration_screen.dart';
import 'package:batch33c/splash/splash_screen.dart';
import 'package:batch33c/tabbar_example/tab_bar_screen.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    final arg = settings.arguments;

    switch (settings.name) {
      case SplashScreen.routeName:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case LoginScreen.routeName:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case RegistrationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const RegistrationScreen());

      case NavigationScreen.routeName:
        return MaterialPageRoute(builder: (_) => const NavigationScreen());

      case FormScreen.routeName:
        return MaterialPageRoute(builder: (_) => const FormScreen());
   case FirestoreExample.routeName:
        return MaterialPageRoute(builder: (_) => const FirestoreExample());

      case TabBarScreen.routeName:
        return MaterialPageRoute(builder: (_) => const TabBarScreen());

      default:
        _onPageNotFound();
    }
  }

  static Route<dynamic> _onPageNotFound() {
    return MaterialPageRoute(
      builder: (_) => const Scaffold(body: Text("Page not found")),
    );
  }
}
