import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/widget/page.dart';

import '../widget/device_button.dart';

class BedRoom extends StatelessWidget {
  const BedRoom({Key key}) : super(key: key);

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
                ...listDevice['bedroom'].map(
                  (device) {
                    return DeviceButton(
                      deviceName: device['name'],
                      icon: device['icon'],
                      onpressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => device['device'],
                          ),
                        );
                      },
                    );
                  },
                ).toList(),
                DeviceButton(
                  deviceName: "Add device",
                  icon: Icons.add,
                  onpressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
