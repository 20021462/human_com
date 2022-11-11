import 'package:flutter/material.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({super.key});

  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Devices',
        style: TextStyle(
          fontSize: 50,
        ),
      ),
    );
  }
}
