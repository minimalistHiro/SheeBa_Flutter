import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarText extends StatelessWidget {
  final String text;
  const AppBarText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }
}