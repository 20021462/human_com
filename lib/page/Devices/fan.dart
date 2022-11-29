import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/widget/page.dart';

class Fan extends StatefulWidget {
  const Fan({super.key});

  @override
  State<Fan> createState() => _FanState();
}

class _FanState extends State<Fan> {
  bool status = true;

  int _fanspeed = 1;
  int _min_fanspeed = 1;
  int _max_fanspeed = 3;

  int _humidity = 50;
  int _min_humidity = 45;
  int _max_humidity = 55;

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

  void _incrementHumidity() {
    setState(() {
      if (_humidity < _max_humidity && status) {
        _humidity++;
      }
    });
  }

  void _decreaseHumidity() {
    setState(() {
      if (_humidity > _min_humidity && status) {
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
                      left_butt_func: _decreaseFanSpeed,
                      right_butt_func: _incrementFanSpeed,
                      label: "Fan speed",
                      value: _fanspeed.toString(),
                      status: status,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      left_butt_func: _decreaseHumidity,
                      right_butt_func: _incrementHumidity,
                      label: "Humidity",
                      value: _humidity.toString() + "%",
                      status: status,
                    )
                  ]),
            )
          ],
        ));
  }
}
