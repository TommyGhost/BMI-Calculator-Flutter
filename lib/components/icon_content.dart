import 'package:flutter/material.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color colour;

  const IconContent(
      {required this.icon, required this.colour, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 100.0, color: colour),
        Text(
          text,
          style: fLabelTextStyle(colour),
        ),
      ],
    );
  }
}
