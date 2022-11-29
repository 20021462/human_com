import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:human_com/widget/page.dart';

var time = [
  '1 hour',
  '2 hours',
  '3 hours',
  '4 hours',
  '5 hours',
  '6 hours',
];

class SmartLockPage extends StatefulWidget {
  const SmartLockPage({Key key}) : super(key: key);

  @override
  State<SmartLockPage> createState() => _SmartLockPageState();
}

class _SmartLockPageState extends State<SmartLockPage> {
  String doorLockedTime = time[0];
  bool doorLockedOn = false;
  String curtainLockedTime = time[0];
  bool curtainLockedOn = false;

  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: 'Smart Lock',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 1200,
              height: 175,
              decoration: BoxDecoration(
                color: const Color(0xFFF0FBFF),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Doors automatically locked after',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        width: 800,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: DropdownButton(
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          iconSize: 50,
                          underline: const SizedBox(),
                          isExpanded: true,
                          value: doorLockedTime,
                          onChanged: (hour) {
                            setState(() {
                              doorLockedTime = hour;
                            });
                          },
                          items: time.map((hour) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: hour,
                              child: Text(hour),
                            );
                          }).toList(),
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: FlutterSwitch(
                          showOnOff: true,
                          value: doorLockedOn,
                          onToggle: (bool value) {
                            setState(() {
                              doorLockedOn = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Container(
              width: 1200,
              height: 175,
              decoration: BoxDecoration(
                color: const Color(0xFFF0FBFF),
                borderRadius: BorderRadius.circular(50),
                border: Border.all(
                  color: Colors.black,
                  width: 1,
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Curtains automatically locked after',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        width: 800,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                        ),
                        child: DropdownButton(
                          style: const TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                          ),
                          iconSize: 50,
                          underline: const SizedBox(),
                          isExpanded: true,
                          value: curtainLockedTime,
                          onChanged: (hour) {
                            setState(() {
                              curtainLockedTime = hour;
                            });
                          },
                          items: time.map((hour) {
                            return DropdownMenuItem(
                              alignment: Alignment.center,
                              value: hour,
                              child: Text(hour),
                            );
                          }).toList(),
                        ),
                      ),
                      Transform.scale(
                        scale: 1.5,
                        child: FlutterSwitch(
                          showOnOff: true,
                          value: curtainLockedOn,
                          onToggle: (bool value) {
                            setState(() {
                              curtainLockedOn = value;
                            });
                          },
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
