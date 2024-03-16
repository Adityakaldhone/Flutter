import 'dart:async';
import 'package:coffee_shop/getstarted.dart';
import 'package:flutter/material.dart';// Replace this with your main screen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start a timer for 5 seconds
    Timer(const Duration(seconds: 5), () {
      // After 5 seconds, navigate to the main screen
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const GetStarted()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/splash.png'), // Replace 'assets/background_image.jpg' with your image path
            fit: BoxFit.cover,
          ),
        ),
      )
    );
  }
}