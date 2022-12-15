import 'package:applications_project/Bindings/LoginBinding.dart';
import 'package:applications_project/Bindings/RegisterBinding.dart';
import 'package:applications_project/view/Login.dart';
import 'package:applications_project/view/Register.dart';
import 'package:applications_project/view/UploadFile.dart';
import 'package:applications_project/view/Welcome.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'Bindings/UploadBinding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Applications',
      theme: ThemeData(
        primaryColor: Colors.pink,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => Welcome()),
        GetPage(
            name: "/Register",
            page: () => Register(),
            binding: RegisterBinding()),
        GetPage(name: "/Login", page: () => Login(), binding: LoginBinding()),
        GetPage(
            name: "/Upload", page: () => UploadFile(), binding: UploadBinding())
      ],
    );
  }
}
