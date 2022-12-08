import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class Curtain extends StatefulWidget {
  const Curtain(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  @override
  State<Curtain> createState() => _CurtainState();
}

class _CurtainState extends State<Curtain> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _shadelevel;
  bool _favorite;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _shadelevel = listDevice[_room][_id]['shadelevel'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minShadelevel = 0;
  final int _maxShadelevel = 100;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
  }

  void _incrementShadeLevel() {
    setState(() {
      if (_shadelevel < _maxShadelevel && _status) {
        _shadelevel++;
        listDevice[_room][_id]['shadelevel'] = _shadelevel;
      }
    });
  }

  void _decreaseShadeLevel() {
    setState(() {
      if (_shadelevel > _minShadelevel && _status) {
        _shadelevel--;
        listDevice[_room][_id]['shadelevel'] = _shadelevel;
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
                icon: _status ? Icons.blinds : Icons.blinds_closed,
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
                      leftButtFunc: _decreaseShadeLevel,
                      rightButtFunc: _incrementShadeLevel,
                      label: "Shade level",
                      value: "$_shadelevel%",
                      status: _status,
                    ),
                  ]),
            )
          ],
        ));
  }
}
