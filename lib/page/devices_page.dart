import 'package:flutter/material.dart';
import 'package:human_com/page/Rooms/bedroom_page.dart';
import 'package:human_com/page/Rooms/kitchen_page.dart';
import 'package:human_com/page/Rooms/livingroom_page.dart';
import 'package:human_com/widget/page.dart';
import 'package:human_com/page/Devices/widget/device_button.dart';

class DevicesPage extends StatefulWidget {
  const DevicesPage({Key key}) : super(key: key);

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
              const Text(
                "Security",
                style: TextStyle(fontSize: 40),
              ),
              Row(
                children: [
                  DeviceButton(
                      deviceName: "Camera",
                      icon: Icons.camera_outlined,
                      onpressed: () {}),
                  const SizedBox(
                    width: 40,
                  ),
                  DeviceButton(
                      deviceName: "Door",
                      icon: Icons.door_back_door_outlined,
                      onpressed: () {})
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
                      onpressed: () {}),
                ],
              ),
            ],
          ),
        ));
  }
}
