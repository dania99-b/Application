import 'dart:convert';

import 'package:applications_project/Models/UserModel.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../global.dart';

class AuthServices {
  static var item = http.Client();

  static Register(first_name, last_name, email, username, password,
      password_confirmation, endpoint) async {
    var response = await item.post(
      Uri.parse(baseApi + endpoint),
      body: jsonEncode({
        'first_name': first_name,
        'last_name': last_name,
        'username': username,
        'email': email,
        'password': password,
        'password_confirmation': password_confirmation,
      }),
      headers: {
        'Content-type': 'application/json',
        'Accept': 'application/json',
      },
    );
    print(response.body);
    print(response.body);
    if (response.statusCode == 200) {
      var obj = response.body;

      var user = userFromJson(obj);

      return user;
    } else {
      return null;
    }
  }

  static Login(email, password, endpoint) async {
    var response = await item.post(
      Uri.parse(baseApi + endpoint),
      body: jsonEncode(<String, String>{"email": email, "password": password}),
      headers: {
        'Content-type': 'application/json',
      },
    );
    // print(response.body);
    if (response.statusCode == 200) {
      var obj = response.body;

      var user = userFromJson(obj);
      await saveToSharedPreferences('token', user.token);
      print(user.token);
      return user;
    } else
      return null;
  }
}
