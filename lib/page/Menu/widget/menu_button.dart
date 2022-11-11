import 'package:flutter/material.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function() onPressed;

  const MenuButton({
    super.key,
    required this.title,
    required this.icon,
    required this.onPressed,
  });

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
            MaterialStateProperty.all<Color>(const Color(0xFFEFFAFE)),
        fixedSize: MaterialStateProperty.all<Size>(const Size(1500, 130)),
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
            color: Colors.black,
          ),
          const SizedBox(
            width: 80,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w800,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
