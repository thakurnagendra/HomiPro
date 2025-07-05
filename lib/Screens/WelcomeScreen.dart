import 'package:flutter/material.dart';
import 'package:homipro/Screens/AuthScreen/LoginScreen.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  void initState() {
    super.initState();
    // Keep splash for 2.5 seconds, then navigate or pop
    Future.delayed(const Duration(milliseconds: 2500), () {
      Get.offAll(() => LoginScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Lottie.asset(
                'Assets/WelcomeImage.json',
                width: 220,
                height: 220,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 24),
            AnimatedTextKit(
              animatedTexts: [
                WavyAnimatedText(
                  'Welcome to HomiPro App',
                  textStyle: const TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                  speed: const Duration(milliseconds: 120),
                ),
              ],
              totalRepeatCount: 1,
              isRepeatingAnimation: false,
              pause: const Duration(milliseconds: 0),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
          ],
        ),
      ),
    );
  }
}
