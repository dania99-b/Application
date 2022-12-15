import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String txt;
  final press;
  final Color color;
  final Color textColor;
  const Button({
    Key? key,
    required this.txt,
    required this.press,
    this.color = Colors.pink,
    this.textColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: TextButton(
          onPressed: press,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            child: Text(
              txt,
              style: TextStyle(color: textColor),
            ),
          ),
          style: TextButton.styleFrom(backgroundColor: color),
        ),
      ),
    );
  }
}
