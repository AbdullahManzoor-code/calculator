import 'package:calculator/home.dart';
import 'package:flutter/material.dart';

class finalcard extends StatelessWidget {
  final IconData ICon;
  final String text;
  finalcard({
    required this.ICon,
    this.text = ("none"),
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          ICon,
          size: 80,
          color: them ? Colors.black : Colors.white,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 18,
            color: them ? Colors.black : Colors.white,
          ),
        )
      ],
    );
  }
}
