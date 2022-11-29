import 'package:flutter/material.dart';

class DeviceButton extends StatelessWidget {
  final String deviceName;
  final IconData icon;
  final Function() onpressed;
  const DeviceButton({
    Key key,
    this.deviceName,
    this.icon,
    this.onpressed,
  }) : super(key: key);

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
            side: MaterialStateProperty.all(const BorderSide(
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
              deviceName,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 35,
                  fontFamily: "Rounded Mplus 1c"),
            )
          ],
        ));
  }
}
