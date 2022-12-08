import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class Lamp extends StatefulWidget {
  const Lamp(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  @override
  State<Lamp> createState() => _LampState();
}

class _LampState extends State<Lamp> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _brightness;
  bool _favorite;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _brightness = listDevice[_room][_id]['brightness'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minBrightness = 0;
  final int _maxBrightness = 100;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
  }

  void _incrementBrightness() {
    setState(() {
      if (_brightness < _maxBrightness && _status) {
        _brightness++;
        listDevice[_room][_id]['brightness'] = _brightness;
      }
    });
  }

  void _decreaseBrightness() {
    setState(() {
      if (_brightness > _minBrightness && _status) {
        _brightness--;
        listDevice[_room][_id]['brightness'] = _brightness;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return DeviceScaffold(
        setFavorite: setFavorite,
        favorite: _favorite,
        title: _name,
        body: Stack(
          children: [
            Positioned(
              right: 50,
              top: 30,
              child: DeviceStatus(
                status: _status,
                icon: Icons.light_outlined,
              ),
            ),
            Center(
              child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    PowerButton(
                      onpressed: () {
                        setState(() {
                          _status = !_status;
                          listDevice[_room][_id]['status'] = _status;
                        });
                      },
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseBrightness,
                      rightButtFunc: _incrementBrightness,
                      label: "Brightness",
                      value: "$_brightness%",
                      status: _status,
                    ),
                  ]),
            )
          ],
        ));
  }
}
