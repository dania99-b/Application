import 'package:applications_project/component/Button.dart';
import 'package:applications_project/view/Login.dart';
import 'package:applications_project/view/Register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME',
                style: TextStyle(
                  color: Colors.pink,
                  fontFamily: 'Source Sans Pro',
                  fontSize: 25.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 35.0),
                child: SvgPicture.asset(
                  'assets/undraw_hello_re_3evm.svg',
                  height: size.height * 0.45,
                ),
              ),
              Button(
                txt: 'LOGIN',
                press: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => Login(),
                  //   ),
                  // );
                  Get.toNamed("/Login");
                },
              ),
              Button(
                  txt: 'SIGNUP',
                  color: Colors.pink.shade200,
                  textColor: Colors.black,
                  press: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => SignUP(),
                    //   ),
                    // );
                    Get.toNamed("/Register");
                  })
            ],
          ),
        ),
      ),
    );
  }
}
