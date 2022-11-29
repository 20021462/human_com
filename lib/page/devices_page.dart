import 'package:flutter/material.dart';
import 'package:human_com/page/Rooms/bedroom_page.dart';
import 'package:human_com/page/Rooms/kitchen_page.dart';
import 'package:human_com/page/Rooms/livingroom_page.dart';
import 'package:human_com/widget/page.dart';
import 'package:human_com/page/Devices/widget/device_button.dart';

class DevicesPage extends StatefulWidget {
  @override
  State<DevicesPage> createState() => _DevicesPageState();
}

class _DevicesPageState extends State<DevicesPage> {
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
              Text(
                "Security",
                style: TextStyle(fontSize: 40),
              ),
              Row(
                children: [
                  DeviceButton(
                      device_name: "Camera",
                      icon: Icons.camera_outlined,
                      onpressed: () {}),
                  const SizedBox(
                    width: 40,
                  ),
                  DeviceButton(
                      device_name: "Door",
                      icon: Icons.door_back_door_outlined,
                      onpressed: () {})
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                "Rooms",
                style: TextStyle(fontSize: 40),
              ),
              Row(
                children: [
                  DeviceButton(
                      device_name: "Living room",
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
                      device_name: "Bed room",
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
                      device_name: "Kitchen",
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
                      device_name: "Bathroom",
                      icon: Icons.bathroom_outlined,
                      onpressed: () {}),
                ],
              ),
            ],
          ),
        ));
  }
}
