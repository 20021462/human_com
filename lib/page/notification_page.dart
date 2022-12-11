import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/noti.dart';
import 'package:human_com/widget/page.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  final controller = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: 'Notifications',
      body: PageView(
        scrollDirection: Axis.horizontal,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              OutlinedButton(
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2ABBAA)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(80, 220)),
                      side: MaterialStateProperty.all(const BorderSide(
                          color: Color(0xff5E899A),
                          width: 5.0,
                          style: BorderStyle.solid))),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 80,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Today - Thursday, December 12, 2022',
                    style: TextStyle(
                        fontSize: 60, color: Colors.black, fontFamily: 'Inter'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Noti(
                    content: 'The front door still opens. Remember to lock it!',
                    time: '10:05',
                    read: false,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Noti(
                    content:
                        'TV has been on for 3 hours. Do you want to turn it off?',
                    time: '9:05',
                    read: true,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2ABBAA)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(80, 220)),
                      side: MaterialStateProperty.all(const BorderSide(
                          color: Color(0xff5E899A),
                          width: 5.0,
                          style: BorderStyle.solid))),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 80,
                    color: Colors.black,
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              OutlinedButton(
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2ABBAA)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(80, 220)),
                      side: MaterialStateProperty.all(const BorderSide(
                          color: Color(0xff5E899A),
                          width: 5.0,
                          style: BorderStyle.solid))),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 80,
                    color: Colors.black,
                  )),
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Yesterday - Wednesday, December 11, 2022',
                    style: TextStyle(
                        fontSize: 60, color: Colors.black, fontFamily: 'Inter'),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Noti(
                    content: 'The oven has finished baking. Please check it!',
                    time: '12:05',
                    read: true,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Noti(
                    content:
                        'TV has been on for 3 hours. Do you want to turn it off?',
                    time: '9:05',
                    read: true,
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      alignment: Alignment.center,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xFF2ABBAA)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(80, 220)),
                      side: MaterialStateProperty.all(const BorderSide(
                          color: Color(0xff5E899A),
                          width: 5.0,
                          style: BorderStyle.solid))),
                  onPressed: () {},
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 80,
                    color: Colors.black,
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
