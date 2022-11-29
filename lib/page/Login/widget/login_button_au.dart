import 'package:flutter/material.dart';

class LoginButt extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const LoginButt({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFF417D86)),
        fixedSize: MaterialStateProperty.all<Size>(const Size(385, 115)),
      ),
      onPressed: onPressed,
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w300,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
