import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onPressed;

  RoundIconButton(this.icon, {this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: CircleBorder(),
      fillColor: buttonColor,
      constraints: BoxConstraints.tightFor(width: 48, height: 48),
      elevation: 6,
      child: Icon(icon),
      onPressed: onPressed,
    );
  }
}
