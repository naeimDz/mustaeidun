import 'package:flutter/material.dart';
import '../../features/onboarding/presentation/pages/onboarding_screen.dart';

class AppRoutes {
  static const String onboarding = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String home = '/home';
  static const String anotherFeature = '/another-feature';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      // case login:
      //   return MaterialPageRoute(builder: (_) => const LoginScreen());

      //  case register:
      // return MaterialPageRoute(builder: (_) => const RegisterScreen());

      //case home:
      //return MaterialPageRoute(builder: (_) => const HomeScreen());

      case anotherFeature:
        return MaterialPageRoute(builder: (_) => const UnknownRouteScreen());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('404 | Page Not Found')),
          ),
        );
    }
  }
}

class UnknownRouteScreen extends StatelessWidget {
  const UnknownRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('404 - Not Found')),
    );
  }
}
