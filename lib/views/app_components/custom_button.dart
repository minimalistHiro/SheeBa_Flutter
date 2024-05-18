import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Widget? nextPage;
  const CustomButton({super.key, required this.text, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(300, 50),
        foregroundColor: Colors.white, backgroundColor: Colors.black,
        shape: const StadiumBorder(),
      ),
      onPressed: () {
        if (nextPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => nextPage!,
            ),
          );
        }
      },
      child: Text(text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}

class CustomOutlinedButton extends StatelessWidget {
  final String text;
  final Widget? nextPage;
  const CustomOutlinedButton({super.key, required this.text, this.nextPage});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size(300, 50),
        foregroundColor: Colors.black, shape: const StadiumBorder(),
        side: const BorderSide(color: Colors.black, width: 2.5),
      ),
      onPressed: () {
        if (nextPage != null) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => nextPage!,
            ),
          );
        }
      },
      child: Text(text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 15,
        ),
      ),
    );
  }
}