import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:nocoast_flutter/app/views/main/home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AnimatedSplashScreen(
        duration: 3000,
        splash: Image.asset(
          'assets/logos/logo.png',
        ),
        nextScreen: const HomePage(),
        splashTransition: SplashTransition.slideTransition,
      ),
    );
  }
}
