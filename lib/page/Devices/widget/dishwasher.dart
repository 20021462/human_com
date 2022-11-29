import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:human_com/page/Devices/widget/channel_controller.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';
import 'package:marquee/marquee.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/widget/page.dart';

class DishWasher extends StatefulWidget {
  const DishWasher({super.key});

  @override
  State<DishWasher> createState() => _DishWasherState();
}

class _DishWasherState extends State<DishWasher> {
  bool status = true;

  List<String> mode = <String>["Normal", "Quick", "Eco"];
  List<int> timer = <int>[150, 30, 185];
  int index = 0;

  int _volume = 50;
  int _min_volume = 0;
  int _max_volume = 100;

  void _incrementVolume() {
    setState(() {
      if (_volume < _max_volume && status) {
        _volume++;
      }
    });
  }

  void _decreaseVolume() {
    setState(() {
      if (_volume > _min_volume && status) {
        _volume--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Dishwasher",
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: status,
                icon: FontAwesomeIcons.kitchenSet,
              ),
            ),
            Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PowerButton(
                      onpressed: () {
                        setState(() {
                          status = !status;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<CircleBorder>(
                                  CircleBorder(),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFFFE9800)),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.black)),
                            onPressed: () {
                              setState(() {
                                index = (index - 1) % mode.length;
                              });
                            },
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 90,
                              color: Colors.black,
                            )),
                        const SizedBox(
                          width: 100,
                        ),
                        Column(
                          children: [
                            Text(
                              "Mode",
                              style: TextStyle(fontSize: 50),
                            ),
                            status
                                ? Container(
                                    width: 290,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          248, 221, 125, 0.45),
                                    ),
                                    child: Center(
                                      child: Text(
                                        mode[index],
                                        style: TextStyle(
                                          fontSize: 70,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 290,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffD9D9D9),
                                    ),
                                  )
                          ],
                        ),
                        const SizedBox(
                          width: 100,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<CircleBorder>(
                                  CircleBorder(),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xFFFE9800)),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.black)),
                            onPressed: () {
                              setState(() {
                                index = (index + 1) % mode.length;
                              });
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              size: 90,
                              color: Colors.black,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 320,
                        ),
                        Column(
                          children: [
                            Text(
                              "Timer",
                              style: TextStyle(fontSize: 50),
                            ),
                            status
                                ? Container(
                                    width: 205,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(
                                          248, 221, 125, 0.45),
                                    ),
                                    child: Center(
                                      child: Text(
                                        timer[index].toString(),
                                        style: TextStyle(
                                          fontSize: 70,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  )
                                : Container(
                                    width: 205,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffD9D9D9),
                                    ),
                                  )
                          ],
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<CircleBorder>(
                                  CircleBorder(),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(status
                                        ? const Color(0xFFA2D5EB)
                                        : const Color(0xffD9D9D9)),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.black)),
                            onPressed: () {
                              setState(() {
                                index = (index + 1) % mode.length;
                              });
                            },
                            child: Text(
                              "Wash",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.black),
                            )),
                        const SizedBox(
                          width: 190,
                        ),
                        ElevatedButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<CircleBorder>(
                                  CircleBorder(),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        const Color(0xffD9D9D9)),
                                fixedSize: MaterialStateProperty.all<Size>(
                                    const Size(120, 120)),
                                shadowColor: MaterialStateProperty.all<Color>(
                                    Colors.black)),
                            onPressed: () {
                              setState(() {
                                index = (index + 1) % mode.length;
                              });
                            },
                            child: Text(
                              "Dry",
                              style:
                                  TextStyle(fontSize: 35, color: Colors.black),
                            )),
                      ],
                    )
                  ]),
            )
          ],
        ));
  }
}
