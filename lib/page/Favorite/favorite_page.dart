import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_button.dart';
import 'package:human_com/widget/page.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> listFavorite = [];

    for (var device in listDevice['livingroom']) {
      if (device['favorite']) {
        listFavorite.add(
          DeviceButton(
            deviceName: device['name'],
            icon: device['icon'],
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => device['device'],
                ),
              );
            },
          ),
        );
      }
    }
    for (var device in listDevice['bedroom']) {
      if (device['favorite']) {
        listFavorite.add(
          DeviceButton(
            deviceName: device['name'],
            icon: device['icon'],
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => device['device'],
                ),
              );
            },
          ),
        );
      }
    }
    for (var device in listDevice['kitchen']) {
      if (device['favorite']) {
        listFavorite.add(
          DeviceButton(
            deviceName: device['name'],
            icon: device['icon'],
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => device['device'],
                ),
              );
            },
          ),
        );
      }
    }
    for (var device in listDevice['bathroom']) {
      if (device['favorite']) {
        listFavorite.add(
          DeviceButton(
            deviceName: device['name'],
            icon: device['icon'],
            onpressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => device['device'],
                ),
              );
            },
          ),
        );
      }
    }

    return PageApp(
      title: "Favorite",
      body: Padding(
        padding: const EdgeInsets.only(top: 20, left: 80, right: 80),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Choose a device to control",
              style: TextStyle(fontSize: 40),
            ),
            const SizedBox(
              height: 40,
            ),
            Wrap(
              spacing: 40, // gap between adjacent chips
              runSpacing: 40,
              children: [...listFavorite],
            ),
          ],
        ),
      ),
    );
  }
}
