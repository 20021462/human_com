import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/air_conditioner.dart';
import 'package:human_com/page/Devices/curtain.dart';
import 'package:human_com/page/Devices/lamp.dart';
import 'package:human_com/page/Devices/speaker.dart';
import 'package:human_com/page/Devices/tv.dart';
import 'package:human_com/widget/page.dart';

import '../Devices/fan.dart';
import '../Devices/widget/device_button.dart';

class BedRoom extends StatelessWidget {
  const BedRoom({super.key});

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Bedroom",
        body: Padding(
            padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
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
                        device_name: "Fan 1",
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
                        device_name: "Fan 2",
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
                        device_name: "Air conditioner",
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
                        device_name: "TV",
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
                        device_name: "Curtain",
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
                        device_name: "Lamp",
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
                        device_name: "Add device",
                        icon: Icons.add,
                        onpressed: () {}),
                  ],
                ),
              ],
            )));
  }
}
