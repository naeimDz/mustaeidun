import 'package:flutter/material.dart';
import 'package:mustaeidun/config/router/app_router.dart';
import 'package:mustaeidun/core/services/local_storage_service.dart';
import 'package:mustaeidun/features/auth/presentation/pages/register_screen.dart';
import 'package:mustaeidun/features/onboarding/presentation/pages/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final done = await LocalStorageService.isOnboardingDone();

  runApp(MyApp(showOnboarding: !done));
}

class MyApp extends StatelessWidget {
  final bool showOnboarding;
  const MyApp({super.key, required this.showOnboarding});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mustaeidun',
      debugShowCheckedModeBanner: false,
      initialRoute: showOnboarding ? AppRoutes.onboarding : AppRoutes.login,
      routes: {
        AppRoutes.onboarding: (_) => const OnboardingScreen(),
        AppRoutes.login: (_) => const RegisterPage(), // مؤقتًا
      },
    );
  }
}
