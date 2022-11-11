import 'package:flutter/material.dart';
import 'package:human_com/page/devices_page.dart';
import 'package:human_com/page/Menu/menu_page.dart';
import 'package:human_com/page/notification_page.dart';
import 'package:human_com/page/favorite_page.dart';
import 'package:human_com/page/voice_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentTab = 0;
  final PageStorageBucket bucket = PageStorageBucket();
  late Widget currentScreen;

  _HomePageState() {
    currentScreen = FavoritePage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          height: 160,
          child: Row(
            children: [
              Expanded(
                child: MaterialButton(
                  color: currentTab == 0 ? Color(0xFFCFDCE1) : Colors.white,
                  onPressed: () {
                    setState(() {
                      currentScreen = FavoritePage();
                      currentTab = 0;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.star_border,
                        size: 70,
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: currentTab == 1 ? Color(0xFFCFDCE1) : Colors.white,
                  onPressed: () {
                    setState(() {
                      currentScreen = DevicesPage();
                      currentTab = 1;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.widgets_outlined,
                        size: 70,
                      ),
                      Text(
                        'Devices',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: currentTab == 2 ? Color(0xFFCFDCE1) : Colors.white,
                  onPressed: () {
                    setState(() {
                      currentScreen = VoicePage();
                      currentTab = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.mic_none,
                        size: 70,
                      ),
                      Text(
                        'Voice Assistant',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: currentTab == 3 ? Color(0xFFCFDCE1) : Colors.white,
                  onPressed: () {
                    setState(() {
                      currentScreen = NotificationPage();
                      currentTab = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.notifications_active_outlined,
                        size: 70,
                      ),
                      Text(
                        'Notification',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  color: currentTab == 4 ? Color(0xFFCFDCE1) : Colors.white,
                  onPressed: () {
                    setState(() {
                      currentScreen = MenuPage();
                      currentTab = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.menu,
                        size: 70,
                      ),
                      Text(
                        'Menu',
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 35,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
