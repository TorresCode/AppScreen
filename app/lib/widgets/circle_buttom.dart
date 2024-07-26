import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  const CircleButtom({super.key, required this.icon, required this.iconSize, required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
      ),
    );
  }
}
