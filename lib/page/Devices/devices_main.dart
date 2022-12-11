import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:human_com/page/Devices/Device/air_conditioner.dart';
import 'package:human_com/page/Devices/Camera/camera.dart';
import 'package:human_com/page/Devices/Device/curtain.dart';
import 'package:human_com/page/Devices/Device/dishwasher.dart';
import 'package:human_com/page/Devices/Device/fan.dart';
import 'package:human_com/page/Devices/Device/lamp.dart';
import 'package:human_com/page/Devices/Device/oven.dart';
import 'package:human_com/page/Devices/Device/speaker.dart';
import 'package:human_com/page/Devices/Device/tv.dart';
import 'package:human_com/page/Devices/Rooms/bathroom_page.dart';
import 'package:human_com/page/Devices/widget/device_button.dart';
import 'package:human_com/page/Devices/Rooms/bedroom_page.dart';
import 'package:human_com/page/Devices/Rooms/kitchen_page.dart';
import 'package:human_com/page/Devices/Rooms/livingroom_page.dart';
import 'package:human_com/page/Devices/Camera/camera.dart';
import 'package:human_com/widget/page.dart';

import 'Device/door.dart';

var listDevice = {
  'livingroom': [
    {
      'device': const Fan('livingroom', 0),
      'name': 'Fan 1',
      'icon': Icons.wind_power_outlined,
      'status': false,
      'fanspeed': 1,
      'humidity': 50,
      'favorite': true,
    },
    {
      'device': const Fan('livingroom', 1),
      'name': 'Fan 2',
      'icon': Icons.wind_power_outlined,
      'status': false,
      'fanspeed': 1,
      'humidity': 50,
      'favorite': false,
    },
    {
      'device': const AirConditioner('livingroom', 2),
      'name': 'Air conditioner',
      'icon': Icons.air_outlined,
      'status': false,
      'fanspeed': 1,
      'temperature': 26,
      'favorite': false,
    },
    {
      'device': const TV('livingroom', 3),
      'name': 'TV',
      'icon': Icons.tv,
      'status': false,
      'index': 0,
      'volume': 50,
      'favorite': false,
    },
    {
      'device': const Curtain('livingroom', 4),
      'name': 'Curtain',
      'icon': Icons.blinds,
      'status': false,
      'shadelevel': 50,
      'favorite': false,
    },
    {
      'device': const Lamp('livingroom', 5),
      'name': 'Lamp',
      'icon': Icons.light_outlined,
      'status': false,
      'brightness': 50,
      'favorite': false,
    },
    {
      'device': const Speaker('livingroom', 6),
      'name': 'Speaker',
      'icon': Icons.speaker_group_outlined,
      'status': false,
      'index': 0,
      'volume': 50,
      'favorite': false,
    },
  ],
  'bedroom': [
    {
      'device': const Fan('bedroom', 0),
      'name': 'Fan 3',
      'icon': Icons.wind_power_outlined,
      'status': false,
      'fanspeed': 1,
      'humidity': 50,
      'favorite': false,
    },
    {
      'device': const Fan('bedroom', 1),
      'name': 'Fan 4',
      'icon': Icons.wind_power_outlined,
      'status': false,
      'fanspeed': 1,
      'humidity': 50,
      'favorite': false,
    },
    {
      'device': const AirConditioner('bedroom', 2),
      'name': 'Air conditioner',
      'icon': Icons.air_outlined,
      'status': false,
      'fanspeed': 1,
      'temperature': 26,
      'favorite': false,
    },
    {
      'device': const TV('bedroom', 3),
      'name': 'TV',
      'icon': Icons.tv,
      'status': false,
      'index': 0,
      'volume': 50,
      'favorite': false,
    },
    {
      'device': const Curtain('bedroom', 4),
      'name': 'Curtain',
      'icon': Icons.blinds,
      'status': false,
      'shadelevel': 50,
      'favorite': false,
    },
    {
      'device': const Lamp('bedroom', 5),
      'name': 'Lamp',
      'icon': Icons.light_outlined,
      'status': false,
      'brightness': 50,
      'favorite': false,
    },
  ],
  'kitchen': [
    {
      'device': const Oven('kitchen', 0),
      'name': 'Oven',
      'icon': Icons.microwave_outlined,
      'status': false,
      'temperature': 180,
      'timerH': 1,
      'timerM': 30,
      'favorite': false,
    },
    {
      'device': const DishWasher('kitchen', 1),
      'name': 'Dishwasher',
      'icon': FontAwesomeIcons.kitchenSet,
      'status': false,
      'index': 0,
      'favorite': false,
    },
  ],
  'bathroom': [],
};

class DevicesMain extends StatelessWidget {
  const DevicesMain({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: "Devices",
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Security",
              style: TextStyle(fontSize: 40),
            ),
            Row(
              children: [
                DeviceButton(
                    deviceName: "Camera",
                    icon: Icons.camera_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Camera(),
                        ),
                      );
                    }),
                const SizedBox(
                  width: 40,
                ),
                DeviceButton(
                    deviceName: "Door",
                    icon: Icons.door_back_door_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Door(),
                        ),
                      );
                    })
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            const Text(
              "Rooms",
              style: TextStyle(fontSize: 40),
            ),
            Row(
              children: [
                DeviceButton(
                    deviceName: "Living room",
                    icon: Icons.living_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LivingRoom(),
                        ),
                      );
                    }),
                const SizedBox(
                  width: 40,
                ),
                DeviceButton(
                    deviceName: "Bed room",
                    icon: Icons.bedroom_parent_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BedRoom(),
                        ),
                      );
                    }),
                const SizedBox(
                  width: 40,
                ),
                DeviceButton(
                    deviceName: "Kitchen",
                    icon: Icons.kitchen_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Kitchen(),
                        ),
                      );
                    }),
                const SizedBox(
                  width: 40,
                ),
                DeviceButton(
                    deviceName: "Bathroom",
                    icon: Icons.bathroom_outlined,
                    onpressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Bathroom(),
                        ),
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
