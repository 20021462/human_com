import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class Curtain extends StatefulWidget {
  const Curtain({Key key}) : super(key: key);

  @override
  State<Curtain> createState() => _CurtainState();
}

class _CurtainState extends State<Curtain> {
  bool status = true;

  int _shadelevel = 50;
  final int _minShadelevel = 0;
  final int _maxShadelevel = 100;

  void _incrementShadeLevel() {
    setState(() {
      if (_shadelevel < _maxShadelevel && status) {
        _shadelevel++;
      }
    });
  }

  void _decreaseShadeLevel() {
    setState(() {
      if (_shadelevel > _minShadelevel && status) {
        _shadelevel--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Curtain",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: status ? Icons.blinds : Icons.blinds_closed,
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
                      leftButtFunc: _decreaseShadeLevel,
                      rightButtFunc: _incrementShadeLevel,
                      label: "Shade level",
                      value: "$_shadelevel%",
                      status: status,
                    ),
                  ]),
            )
          ],
        ));
  }
}
