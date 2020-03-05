import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 18, color: Color(0xFF8E8D98)),
        )
      ],
    );
  }
}
