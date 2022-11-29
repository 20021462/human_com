import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class Oven extends StatefulWidget {
  const Oven({Key key}) : super(key: key);

  @override
  State<Oven> createState() => _OvenState();
}

class _OvenState extends State<Oven> {
  bool status = true;

  int _temperature = 180;
  final int _minTemperature = 60;
  final int _maxTemperature = 250;

  int _timerH = 1;
  int _timerM = 30;
  final int _minTimer = 0;
  final int _maxTimer = 59;

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

  void _incrementTimer() {
    setState(() {
      if (_timerM < _maxTimer && status) {
        _timerM++;
      } else if (_timerM >= _maxTimer && status) {
        _timerH++;
        _timerM = 0;
      }
    });
  }

  void _decreaseTimer() {
    setState(() {
      if (_timerM > _minTimer && _timerH > _minTimer && status) {
        _timerM--;
      } else if (_timerM <= _minTimer && _timerH > _minTimer && status) {
        _timerH--;
        _timerM = 59;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Oven",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: Icons.microwave_outlined,
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
                      value: '$_temperature℃',
                      status: status,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseTimer,
                      rightButtFunc: _incrementTimer,
                      label: "Timer",
                      value: "$_timerH:$_timerM",
                      status: status,
                    )
                  ]),
            )
          ],
        ));
  }
}
