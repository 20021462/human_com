import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:human_com/widget/wel_button.dart';
import 'package:human_com/page/Login/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/imgs/undraw_best_place_re_lne9.svg',
              height: 450, width: 713),
          const SizedBox(
            height: 100,
          ),
          WelcomeButton(
            title: 'I have an account',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
          const SizedBox(
            height: 50,
          ),
          WelcomeButton(
            title: 'Create an account',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const LoginPage(),
                ),
              );
            },
          ),
        ],
      )),
    );
  }
}
