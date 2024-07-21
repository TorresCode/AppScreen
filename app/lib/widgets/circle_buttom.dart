import 'package:flutter/material.dart';

class CircleButtom extends StatelessWidget {
  /*final IconButton iconB;
  final double iconSize;
  final Function onPressed;*/
  const CircleButtom({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        onPressed: () {},
        icon: Icon(Icons.search),
        iconSize: 30.0,
        color: Colors.black,
      ),
    );
  }
}
