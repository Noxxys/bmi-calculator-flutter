import 'package:flutter/material.dart';

class BmiCard extends StatelessWidget {
  final Color backgroundColor;
  final Widget child;
  final VoidCallback onTap;

  BmiCard({@required this.backgroundColor, this.child, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: backgroundColor,
          ),
          child: child,
        ),
        onTap: onTap);
  }
}
