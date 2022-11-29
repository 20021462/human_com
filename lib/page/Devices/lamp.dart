import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class Lamp extends StatefulWidget {
  const Lamp({Key key}) : super(key: key);

  @override
  State<Lamp> createState() => _LampState();
}

class _LampState extends State<Lamp> {
  bool status = true;

  int _brightness = 50;
  final int _minBrightness = 0;
  final int _maxBrightness = 100;

  void _incrementBrightness() {
    setState(() {
      if (_brightness < _maxBrightness && status) {
        _brightness++;
      }
    });
  }

  void _decreaseBrightness() {
    setState(() {
      if (_brightness > _minBrightness && status) {
        _brightness--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Lamp",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: Icons.light_outlined,
              ),
            ),
            Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PowerButton(
                      onpressed: () {
                        setState(() {
                          status = !status;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseBrightness,
                      rightButtFunc: _incrementBrightness,
                      label: "Brightness",
                      value: "$_brightness%",
                      status: status,
                    ),
                  ]),
            )
          ],
        ));
  }
}
