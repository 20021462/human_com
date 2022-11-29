import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:human_com/page/Menu/font_page.dart';
import 'package:human_com/page/Menu/smartlock_page.dart';
import 'package:human_com/widget/page.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool notification = true;
  bool permission = false;

  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: 'Setting',
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEFFAFE)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(1500, 100)),
              ),
              onPressed: () {
                setState(() {
                  if (notification) {
                    notification = false;
                  } else {
                    notification = true;
                  }
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Notification',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Transform.scale(
                      scale: 2,
                      child: FlutterSwitch(
                        showOnOff: true,
                        activeColor: const Color(0xFF2ABBAA),
                        value: notification,
                        onToggle: (bool value) {
                          setState(() {
                            notification = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEFFAFE)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(1500, 100)),
              ),
              onPressed: () {
                setState(() {
                  if (permission) {
                    permission = false;
                  } else {
                    permission = true;
                  }
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Permission',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Transform.scale(
                      scale: 2,
                      child: FlutterSwitch(
                        showOnOff: true,
                        activeColor: const Color(0xFF2ABBAA),
                        value: permission,
                        onToggle: (bool value) {
                          setState(() {
                            permission = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEFFAFE)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(1500, 100)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SmartLockPage(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Smart Lock',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2ABBAA),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'Customize',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFEFFAFE)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(1500, 100)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FontSizePage(),
                  ),
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 40),
                    child: Text(
                      'Font Size',
                      style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF2ABBAA),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Text(
                      'Customize',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            ElevatedButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFF6231)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(400, 100)),
              ),
              onPressed: () {},
              child: const Text(
                'Log out',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
                  fontSize: 60,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
