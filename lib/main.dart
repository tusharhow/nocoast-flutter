import 'package:flutter/material.dart';
import 'package:nocoast_flutter/app/views/auth/login_screen.dart';
import 'package:nocoast_flutter/app/views/main/home_page.dart';
import 'package:nocoast_flutter/app/views/splash/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
