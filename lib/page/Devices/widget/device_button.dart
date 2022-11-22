import 'package:flutter/material.dart';

class DeviceButton extends StatelessWidget {
  final String device_name;
  final IconData icon;
  final Function() onpressed;
  const DeviceButton(
      {super.key,
      required this.device_name,
      required this.icon,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
                const Color.fromRGBO(227, 154, 87, 0.5)),
            fixedSize: MaterialStateProperty.all<Size>(const Size(270, 200)),
            side: MaterialStateProperty.all(BorderSide(
                color: Color(0xff5E899A),
                width: 5.0,
                style: BorderStyle.solid))),
        onPressed: onpressed,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.black,
              size: 110,
            ),
            Text(
              device_name,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: "Rounded Mplus 1c"),
            )
          ],
        ));
  }
}
