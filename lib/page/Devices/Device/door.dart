import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/door_controller.dart';
import 'package:human_com/widget/page.dart';

import '../widget/device_button.dart';

class Door extends StatefulWidget {
  const Door({Key key});

  @override
  State<StatefulWidget> createState() => _DoorState();
}

class _DoorState extends State<Door> {
  bool _lockall = true;
  List<Widget> _door_list = [
    new DoorControl(
      key: Key('Front door'),
      doorName: 'Front door',
    ),
    new DoorControl(key: Key('Back door'), doorName: 'Back door'),
    new DoorControl(
      key: Key('Garage door'),
      doorName: 'Garage door',
    ),
  ];

  void _lock_all() {
    setState(() {
      _lockall = !_lockall;
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: "Door",
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: _lock_all,
                child: Text(
                  _lockall ? 'Lock all' : 'Unlock all',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 60,
                    fontFamily: 'Inter',
                  ),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        _lockall ? const Color(0xFFFF6231) : Color(0xFF2ABBAA)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(300, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
              ),
              SizedBox(
                height: 50,
              ),
              _door_list[0],
              SizedBox(
                height: 50,
              ),
              _door_list[1],
              SizedBox(
                height: 50,
              ),
              _door_list[2],
            ]),
      ),
    );
  }
}
