import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/widget/page.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Oven extends StatefulWidget {
  const Oven({super.key});

  @override
  State<Oven> createState() => _OvenState();
}

class _OvenState extends State<Oven> {
  bool status = true;

  int _temperature = 180;
  int _min_temperature = 60;
  int _max_temperature = 250;

  int _timer_h = 1;
  int _timer_m = 30;
  int _min_timer = 0;
  int _max_timer = 59;

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

  void _incrementTimer() {
    setState(() {
      if (_timer_m < _max_timer && status) {
        _timer_m++;
      } else if (_timer_m >= _max_timer && status) {
        _timer_h++;
        _timer_m = 0;
      }
    });
  }

  void _decreaseTimer() {
    setState(() {
      if (_timer_m > _min_timer && _timer_h > _min_timer && status) {
        _timer_m--;
      } else if (_timer_m <= _min_timer && _timer_h > _min_timer && status) {
        _timer_h--;
        _timer_m = 59;
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
                      left_butt_func: _decreaseTemperature,
                      right_butt_func: _incrementTemperature,
                      label: "Temperature",
                      value: _temperature.toString() + '℃',
                      status: status,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      left_butt_func: _decreaseTimer,
                      right_butt_func: _incrementTimer,
                      label: "Timer",
                      value: _timer_h.toString() + ":" + _timer_m.toString(),
                      status: status,
                    )
                  ]),
            )
          ],
        ));
  }
}
