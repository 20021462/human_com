import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/channel_controller.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:human_com/widget/page.dart';

class TV extends StatefulWidget {
  const TV({Key key}) : super(key: key);

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
  final int _minVolume = 0;
  final int _maxVolume = 100;

  void _incrementVolume() {
    setState(() {
      if (_volume < _maxVolume && status) {
        _volume++;
      }
    });
  }

  void _decreaseVolume() {
    setState(() {
      if (_volume > _minVolume && status) {
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
                      leftButtFunc: () {
                        setState(() {
                          index = (index + 1) % channel.length;
                        });
                      },
                      rightButtFunc: () {
                        setState(() {
                          index = (index - 1) % channel.length;
                        });
                      },
                      status: status,
                      channel: channel[index],
                      programme: programme[index],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseVolume,
                      rightButtFunc: _incrementVolume,
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
