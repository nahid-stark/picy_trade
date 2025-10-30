import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:picy_trade/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: 'assets/icon/app_icon_circle.png',
      nextScreen: const HomeScreen(),
      splashTransition: SplashTransition.fadeTransition,
      duration: 1000,
      splashIconSize: 200,
      backgroundColor: Colors.cyanAccent.shade100,
    );
  }
}
