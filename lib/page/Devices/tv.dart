import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/channel_controller.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:marquee/marquee.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/widget/page.dart';

class TV extends StatefulWidget {
  const TV({super.key});

  @override
  State<TV> createState() => _TVState();
}

class _TVState extends State<TV> {
  bool status = true;

  List<String> channel = <String>["HBO", "BBC Earth", "Cartoon Network"];
  List<String> programme = <String>[
    "Harry Potter and the chamber of secrets",
    "Dinosaur Apocalypse",
    "The amazing world of Gumball"
  ];
  int index = 0;

  int _volume = 50;
  int _min_volume = 0;
  int _max_volume = 100;

  void _incrementVolume() {
    setState(() {
      if (_volume < _max_volume && status) {
        _volume++;
      }
    });
  }

  void _decreaseVolume() {
    setState(() {
      if (_volume > _min_volume && status) {
        _volume--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "TV",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: Icons.tv_outlined,
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
                    ChannelController(
                      left_butt_func: () {
                        setState(() {
                          index = (index + 1) % channel.length;
                        });
                      },
                      right_butt_func: () {
                        setState(() {
                          index = (index - 1) % channel.length;
                        });
                      },
                      status: status,
                      channel: channel[index],
                      programme: programme[index],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      left_butt_func: _decreaseVolume,
                      right_butt_func: _incrementVolume,
                      label: "Volume",
                      value: _volume.toString(),
                      status: status,
                    )
                  ]),
            )
          ],
        ));
  }
}
