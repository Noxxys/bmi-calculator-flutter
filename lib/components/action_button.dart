import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class ActionButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  ActionButton({@required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        color: accentColor,
        height: 50,
      ),
      onTap: onTap,
    );
  }
}