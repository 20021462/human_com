import 'package:flutter/material.dart';

class DeviceScaffold extends StatefulWidget {
  const DeviceScaffold(
      {Key key, this.title, this.body, this.favorite, this.setFavorite})
      : super(key: key);
  final String title;
  final Widget body;
  final bool favorite;
  final Function setFavorite;
  @override
  State<DeviceScaffold> createState() => _DeviceScaffoldState();
}

class _DeviceScaffoldState extends State<DeviceScaffold> {
  bool _favorite;
  @override
  void initState() {
    super.initState();
    _favorite = widget.favorite;
  }

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
        title: Row(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 60,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _favorite = !_favorite;
                  widget.setFavorite();
                });
              },
              icon: (_favorite)
                  ? const Icon(Icons.star, size: 55, color: Colors.amber)
                  : const Icon(Icons.star_border, size: 55),
            ),
          ],
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
      body: widget.body,
    );
  }
}
