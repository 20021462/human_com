import 'package:flutter/material.dart';

class PowerButton extends StatelessWidget {
  final Function() onpressed;
  const PowerButton({super.key, required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Turn on/off",
          style: TextStyle(fontSize: 50),
        ),
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                  CircleBorder(),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF42A4CE)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(120, 120)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: onpressed,
            child: Icon(
              Icons.power_settings_new,
              size: 90,
              color: Colors.black,
            ))
      ],
    );
  }
}
