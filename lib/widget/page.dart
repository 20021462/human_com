import 'package:flutter/material.dart';

class PageApp extends StatelessWidget {
  final String title;
  final Widget body;

  const PageApp({Key key, this.title, this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(
          color: Colors.black,
          size: 50,
        ),
        titleSpacing: 30,
        leadingWidth: 100,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w800,
            fontSize: 60,
          ),
        ),
        toolbarHeight: 90,
        actions: [
          GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.help_outline,
              color: Colors.black,
              size: 70,
            ),
          ),
          const SizedBox(width: 30),
        ],
      ),
      body: body,
    );
  }
}
