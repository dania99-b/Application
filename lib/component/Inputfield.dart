import 'package:flutter/material.dart';

class Inputfield extends StatelessWidget {
  final Widget child;
  const Inputfield({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        horizontal: 20,
      ),
      width: size.width * 0.8,
      // height: size.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}
