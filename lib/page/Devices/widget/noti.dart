import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  final String content;
  final String time;
  final bool read;
  const Noti({
    Key key,
    this.content,
    this.time,
    this.read,
  }) : super(key: key);

  @override
  State<Noti> createState() => _NotiState();
}

class _NotiState extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1130,
      height: 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.black, width: 3),
        color: widget.read ? Color(0xFFFFEDAF) : Color(0xFFFF4A31),
      ),
      child: Text(
        widget.content,
        style: TextStyle(
            fontSize: 40,
            fontFamily: 'Inter',
            fontWeight: widget.read ? FontWeight.normal : FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
