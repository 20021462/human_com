import 'package:flutter/material.dart';
import 'package:human_com/page/Login/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'MPLusRounded1c',
      ),
      // initialRoute: '/',
      // routes: {
      //   '/welcomepage': (context) => WelcomePage(),
      //   '/mainpage': (context) => HomePage(),
      // },
      home: const LoginPage(),
    );
  }
}
