import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/widget/page.dart';

class AirConditioner extends StatefulWidget {
  const AirConditioner({super.key});

  @override
  State<AirConditioner> createState() => _AirConditionerState();
}

class _AirConditionerState extends State<AirConditioner> {
  bool status = true;

  int _fanspeed = 1;
  int _min_fanspeed = 1;
  int _max_fanspeed = 3;

  int _temperature = 26;
  int _min_temperature = 16;
  int _max_temperature = 30;

  void _incrementFanSpeed() {
    setState(() {
      if (_fanspeed < _max_fanspeed && status) {
        _fanspeed++;
      }
    });
  }

  void _decreaseFanSpeed() {
    setState(() {
      if (_fanspeed > _min_fanspeed && status) {
        _fanspeed--;
      }
    });
  }

  void _incrementTemperature() {
    setState(() {
      if (_temperature < _max_temperature && status) {
        _temperature++;
      }
    });
  }

  void _decreaseTemperature() {
    setState(() {
      if (_temperature > _min_temperature && status) {
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
                      left_butt_func: _decreaseTemperature,
                      right_butt_func: _incrementTemperature,
                      label: "Temperature",
                      value: _temperature.toString() + "℃",
                      status: status,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      left_butt_func: _decreaseFanSpeed,
                      right_butt_func: _incrementFanSpeed,
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
