import 'package:flutter/material.dart';

class WelcomeButton extends StatelessWidget {
  final String title;
  final Function() onPressed;

  const WelcomeButton({
    Key key,
    this.title,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(36),
            ),
          ),
          backgroundColor:
              MaterialStateProperty.all<Color>(const Color(0xFF417D86)),
          fixedSize: MaterialStateProperty.all<Size>(const Size(850, 115)),
          shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w800,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
