import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';

class DevicesPage extends StatelessWidget {
  const DevicesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = const DevicesMain();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
