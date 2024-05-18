import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nocoast_flutter/app/views/onboard/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration: 3000,
        splash: Image.asset(
          'assets/logos/logo.png',
        ),
        nextScreen: const OnboardingScreen(),
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}
