import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class Fan extends StatefulWidget {
  const Fan({Key key}) : super(key: key);

  @override
  State<Fan> createState() => _FanState();
}

class _FanState extends State<Fan> {
  bool status = true;

  int _fanspeed = 1;
  final int _minFanspeed = 1;
  final int _maxFanspeed = 3;

  int _humidity = 50;
  final int _minHumidity = 45;
  final int _maxHumidity = 55;

  void _incrementFanSpeed() {
    setState(() {
      if (_fanspeed < _maxFanspeed && status) {
        _fanspeed++;
      }
    });
  }

  void _decreaseFanSpeed() {
    setState(() {
      if (_fanspeed > _minFanspeed && status) {
        _fanspeed--;
      }
    });
  }

  void _incrementHumidity() {
    setState(() {
      if (_humidity < _maxHumidity && status) {
        _humidity++;
      }
    });
  }

  void _decreaseHumidity() {
    setState(() {
      if (_humidity > _minHumidity && status) {
        _humidity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Fan",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: Icons.wind_power,
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
                      height: 20,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseFanSpeed,
                      rightButtFunc: _incrementFanSpeed,
                      label: "Fan speed",
                      value: _fanspeed.toString(),
                      status: status,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseHumidity,
                      rightButtFunc: _incrementHumidity,
                      label: "Humidity",
                      value: "$_humidity%",
                      status: status,
                    )
                  ]),
            )
          ],
        ));
  }
}
