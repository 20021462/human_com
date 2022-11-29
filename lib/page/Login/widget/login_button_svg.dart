import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginButtonSVG extends StatelessWidget {
  final String title;
  final String icon;
  final Function() onPressed;

  const LoginButtonSVG({
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
        fixedSize: MaterialStateProperty.all<Size>(const Size(620, 100)),
      ),
      onPressed: onPressed,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          SvgPicture.asset(
            icon,
            width: 60,
            height: 60,
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
