import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final File? imageFile;
  const CustomIcon({super.key, this.imageFile});

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade300,
              border: Border.all(width: 3),
            ),
          ),
          imageFile != null
              ? Container(
            width: 120.0,
            height: 120.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(imageFile!.path)
              ),
              border: Border.all(width: 3),
            ),
          )
              : Icon(Icons.person, size: 70,)
        ]
    );
  }
}