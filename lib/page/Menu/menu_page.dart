import 'package:flutter/material.dart';
import 'package:human_com/page/Menu/setting_page.dart';
import 'package:human_com/page/Menu/widget/menu_button.dart';
import 'package:human_com/widget/page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: 'Menu',
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MenuButton(
              title: 'Setting',
              icon: Icons.settings_outlined,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SettingPage(),
                  ),
                );
              },
            ),
            const SizedBox(
              height: 100,
            ),
            MenuButton(
              title: 'History',
              icon: Icons.history_outlined,
              onPressed: () {},
            ),
            const SizedBox(
              height: 100,
            ),
            MenuButton(
              title: 'How to use',
              icon: Icons.help_outline,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
