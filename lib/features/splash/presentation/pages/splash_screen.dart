import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: AppColors.splashGradient,
        ),
        child: Stack(
          children: [
            // الصورة في المنتصف تماماً
            Center(
              child: Image.asset(
                'assets/images/logo_white.png',
                height: 300,
              ),
            ),
            // النص في الجزء السفلي من الشاشة
            Positioned(
              bottom: MediaQuery.of(context).size.height *
                  0.05, // 10% من ارتفاع الشاشة من الأسفل
              left: 0,
              right: 0,
              child: const Center(
                child: Text(
                  'Help at the speed of need',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
