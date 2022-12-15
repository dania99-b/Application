import 'package:applications_project/Controller/RegisterController.dart';
import 'package:applications_project/component/Button.dart';
import 'package:applications_project/component/RoundedInputField.dart';
import 'package:applications_project/view/Login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Register extends GetView<RegisterController> {
  Register({Key? key}) : super(key: key);
  // RegisterController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SvgPicture.asset(
                  'assets/undraw_sign_in_re_o58h.svg',
                  height: size.height * 0.35,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedInputField(
                    hintTxt: 'First name',
                    controller: controller.firstnameController,
                    icon: Icons.person,
                    onChanged: (m) {}),
                RoundedInputField(
                    hintTxt: 'Last name',
                    controller: controller.lastnameController,
                    icon: Icons.person,
                    onChanged: (name) {}),
                RoundedInputField(
                    hintTxt: 'Username',
                    controller: controller.usernameController,
                    icon: Icons.person,
                    onChanged: (name) {}),
                RoundedInputField(
                    hintTxt: 'Email',
                    controller: controller.emailController,
                    icon: Icons.person,
                    onChanged: (name) {}),
                RoundedInputField(
                    hintTxt: 'Enter password',
                    controller: controller.passwordController,
                    icon: Icons.lock,
                    onChanged: (k) {}),
                RoundedInputField(
                    hintTxt: 'Confirm password',
                    controller: controller.confirmPasswordController,
                    icon: Icons.lock,
                    onChanged: (k) {}),
                Button(
                    txt: 'Sign Up',
                    press: () {
                      controller.CallRegister();
                    }),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don’t have an Account ? ',
                      style: TextStyle(color: Colors.pink),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(Login());
                      },
                      child: Text(
                        'Sign In ',
                        style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
