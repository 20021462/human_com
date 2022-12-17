import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const LoginButton({
    Key key,
    this.title,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.all<Color>(const Color(0xFFF0FBFF)),
        fixedSize: MaterialStateProperty.all<Size>(const Size(580, 95)),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          Icon(
            icon,
            size: 60,
            color: const Color(0xff4B6E7B),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
