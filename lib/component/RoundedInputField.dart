import 'package:applications_project/component/Inputfield.dart';
import 'package:flutter/material.dart';

class RoundedInputField extends StatelessWidget {
  final String hintTxt;
  final controller;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintTxt,
    required this.icon,
    required this.onChanged,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Inputfield(
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintTxt,
          icon: Icon(
            icon,
            color: Colors.pink,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
