import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final Function() pressed;
  final IconData icon;

  RoundIconButton({required this.icon, required this.pressed});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      child: Icon(
        icon,
        size: 40.0,
        color: const Color(0xFFC1C2C7),
      ),
      fillColor: const Color(0xFF1C1F32),
      shape: const CircleBorder(),
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
    );
  }
}
