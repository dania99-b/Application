import 'dart:convert';

UserModel userFromJson(String str) => UserModel.toObject(json.decode(str));

class UserModel {
  late String first_name;
  late String last_name;
  late String email;
  late String password;
  late String password_confirmation;
  late String username;
  late String token;

  UserModel(this.token);

  factory UserModel.toObject(Map<String, dynamic> json) => UserModel(
      // json['first_name'],
      // json['last_name'],
      // json['email'],
      // json['password'],
      // json['password_confirmation'],
      // json['username'],
      json['token']);
}
