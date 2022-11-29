import 'package:flutter/material.dart';

class LoginFormField extends StatelessWidget {
  final String label;
  final String hint;
  final Widget icon;
  final Function() onPressed;
  const LoginFormField({
    Key key,
    this.label,
    this.hint,
    this.icon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 35),
      decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(
              color: Color(0xff4B6E7B),
              fontSize: 50,
              fontWeight: FontWeight.bold),
          hintText: hint,
          hintStyle: const TextStyle(
              color: Color.fromRGBO(0, 0, 0, 30),
              fontSize: 35,
              fontWeight: FontWeight.w100),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          suffixIcon: icon),
    );
  }
}
