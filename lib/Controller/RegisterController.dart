import 'package:applications_project/Services/authService.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Models/UserModel.dart';

class RegisterController extends GetxController {
  var isloading = false.obs;
  late TextEditingController firstnameController,
      lastnameController,
      emailController,
      passwordController,
      confirmPasswordController,
      usernameController;
  String firstname = '', lastname = '', email = '', password = '';

  @override
  void onInit() {
    firstnameController = TextEditingController();
    lastnameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    usernameController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    usernameController.dispose();

    super.dispose();
  }

  CallRegister() async {
    try {
      isloading(true);

      var data = await AuthServices.Register(
          firstnameController.text,
          lastnameController.text,
          emailController.text,
          usernameController.text,
          passwordController.text,
          confirmPasswordController.text,
          'register_user');
      //print(data);
      if (data != null) {
        print('not nuuulll');

        // saveToSharedPreferences('token', data.token);
        Get.toNamed("/Login");
      }
    } finally {
      isloading(false);
    }
  }
}
