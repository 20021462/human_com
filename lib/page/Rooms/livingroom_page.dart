import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/air_conditioner.dart';
import 'package:human_com/page/Devices/curtain.dart';
import 'package:human_com/page/Devices/lamp.dart';
import 'package:human_com/page/Devices/speaker.dart';
import 'package:human_com/page/Devices/tv.dart';
import 'package:human_com/widget/page.dart';

import '../Devices/fan.dart';
import '../Devices/widget/device_button.dart';

class LivingRoom extends StatelessWidget {
  const LivingRoom({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Living room",
        body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Choose a device to control",
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 40,
                ),
                Wrap(
                  spacing: 40, // gap between adjacent chips
                  runSpacing: 40,
                  children: [
                    DeviceButton(
                        deviceName: "Fan 1",
                        icon: Icons.wind_power_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Fan(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Fan 2",
                        icon: Icons.wind_power_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Fan(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Air conditioner",
                        icon: Icons.air_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AirConditioner(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "TV",
                        icon: Icons.tv,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TV(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Curtain",
                        icon: Icons.blinds,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Curtain(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Lamp",
                        icon: Icons.light_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Lamp(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Speaker",
                        icon: Icons.speaker_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Speaker(),
                            ),
                          );
                        }),
                    DeviceButton(
                        deviceName: "Add device",
                        icon: Icons.add,
                        onpressed: () {}),
                  ],
                ),
              ],
            )));
  }
}
