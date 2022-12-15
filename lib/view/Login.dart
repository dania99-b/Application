import 'package:applications_project/Controller/LoginController.dart';
import 'package:applications_project/component/Button.dart';
import 'package:applications_project/component/RoundedInputField.dart';
import 'package:applications_project/view/Register.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Login extends GetView<LoginController> {
  // final TextEditingController namecontroller = new TextEditingController();
  Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.pink,
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25.0,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                SvgPicture.asset(
                  'assets/undraw_login_re_4vu2.svg',
                  height: size.height * 0.35,
                ),
                SizedBox(
                  height: 20,
                ),
                RoundedInputField(
                  hintTxt: 'Enter your Email',
                  controller: controller.emailController,
                  icon: Icons.person,
                  onChanged: (o) {},
                ),
                RoundedInputField(
                    hintTxt: 'Enter password',
                    controller: controller.passwordController,
                    icon: Icons.lock,
                    onChanged: (k) {}),
                Button(
                    txt: 'LOGIN',
                    press: () {
                      controller.CallLogin();
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
                        Get.toNamed("/Register");
                      },
                      child: Text(
                        'Sign Up ',
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
