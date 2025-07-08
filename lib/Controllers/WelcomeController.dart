import 'package:get/get.dart';
import 'package:homipro/Screens/AuthScreen/LoginScreen.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(milliseconds: 3000), () {
      Get.offAll(() => const LoginScreen());
    });
  }
}
