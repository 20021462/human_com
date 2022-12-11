import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/noti.dart';
import 'package:human_com/page/Devices/widget/noti_page.dart';
import 'package:human_com/page/Devices/widget/noti_page2.dart';
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
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          NotiPage1(pageController: controller),
          NotiPage2(pageController: controller),
        ],
      ),
    );
  }
}
