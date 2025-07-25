import 'package:flutter/material.dart';
import 'package:homipro/Controllers/WelcomeController.dart';
import 'package:get/get.dart';

class WelcomeScreen extends GetView<WelcomeController> {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(WelcomeController());
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('Assets/Images/welcome.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
