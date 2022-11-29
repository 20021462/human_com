import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class AirConditioner extends StatefulWidget {
  const AirConditioner({Key key}) : super(key: key);

  @override
  State<AirConditioner> createState() => _AirConditionerState();
}

class _AirConditionerState extends State<AirConditioner> {
  bool status = true;

  int _fanspeed = 1;
  final int _minFanspeed = 1;
  final int _maxFanspeed = 3;

  int _temperature = 26;
  final int _minTemperature = 16;
  final int _maxTemperature = 30;

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

  void _incrementTemperature() {
    setState(() {
      if (_temperature < _maxTemperature && status) {
        _temperature++;
      }
    });
  }

  void _decreaseTemperature() {
    setState(() {
      if (_temperature > _minTemperature && status) {
        _temperature--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Air conditioner",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: Icons.air,
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
                      leftButtFunc: _decreaseTemperature,
                      rightButtFunc: _incrementTemperature,
                      label: "Temperature",
                      value: "$_temperature℃",
                      status: status,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseFanSpeed,
                      rightButtFunc: _incrementFanSpeed,
                      label: "Fanspeed",
                      value: _fanspeed.toString(),
                      status: status,
                    ),
                  ]),
            )
          ],
        ));
  }
}
