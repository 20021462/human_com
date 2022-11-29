import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:human_com/page/Devices/air_conditioner.dart';
import 'package:human_com/page/Devices/oven.dart';
import 'package:human_com/page/Devices/speaker.dart';
import 'package:human_com/page/Devices/tv.dart';
import 'package:human_com/page/Devices/widget/dishwasher.dart';
import 'package:human_com/widget/page.dart';

import '../Devices/fan.dart';
import '../Devices/widget/device_button.dart';

class Kitchen extends StatelessWidget {
  const Kitchen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Kitchen",
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
                        device_name: "Oven",
                        icon: Icons.microwave_outlined,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Oven(),
                            ),
                          );
                        }),
                    DeviceButton(
                        device_name: "Dishwasher",
                        icon: FontAwesomeIcons.kitchenSet,
                        onpressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DishWasher(),
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
