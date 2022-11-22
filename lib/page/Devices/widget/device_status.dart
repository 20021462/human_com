import 'package:flutter/material.dart';

class DeviceStatus extends StatelessWidget {
  final bool status;
  final IconData icon;
  const DeviceStatus({super.key, required this.status, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 120,
          width: 120,
          color: status ? Color(0xffA2D5EB) : Color(0xffD9D9D9),
          child: Icon(
            icon,
            size: 70,
          ),
        ),
        Text(
          "Status: " + (status ? "ON" : "OFF"),
          style: TextStyle(fontSize: 50),
        )
      ],
    );
  }
}
