import 'package:flutter/material.dart';
import 'package:mainpro/features/auth/ui/screens/login_screen.dart';
import 'package:mainpro/features/auth/ui/screens/signup_screen.dart';
import 'package:mainpro/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:mainpro/root_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      case '/OnboardingScreen':
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case '/LoginScreen':
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case '/SignUpScreen':
        return MaterialPageRoute(builder: (_) => const SignUpScreen());

      case '/RootView':
        return MaterialPageRoute(builder: (_) => const RootView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
