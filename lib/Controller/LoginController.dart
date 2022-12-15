import 'package:applications_project/Services/authService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../global.dart';

class LoginController extends GetxController {
  late TextEditingController emailController, passwordController;

  @override
  void onInit() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  CallLogin() async {
    try {
      var data = await AuthServices.Login(
          emailController.text, passwordController.text, 'login');
      if (data != null) {
        // print(data.token + 'cfddddddddddddddddddddddddd');
        Get.offAllNamed("/Upload");
      }
    } finally {}
  }
}
