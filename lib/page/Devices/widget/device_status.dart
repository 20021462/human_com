import 'package:flutter/material.dart';

class DeviceStatus extends StatelessWidget {
  final bool status;
  final IconData icon;
  const DeviceStatus({
    Key key,
    this.status,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          color: status ? const Color(0xffA2D5EB) : const Color(0xffD9D9D9),
          child: Icon(
            icon,
            size: 70,
          ),
        ),
        Text(
          "Status: ${status ? "ON" : "OFF"}",
          style: const TextStyle(fontSize: 50),
        )
      ],
    );
  }
}
