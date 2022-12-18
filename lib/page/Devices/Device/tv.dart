import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/channel_controller.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class TV extends StatefulWidget {
  const TV(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  @override
  State<TV> createState() => _TVState();
}

class _TVState extends State<TV> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _index;
  int _volume;
  bool _favorite;

  List<String> channel = <String>["HBO", "BBC Earth", "Cartoon Network"];
  List<String> programme = <String>[
    "Harry Potter and the chamber of secrets",
    "Dinosaur Apocalypse",
    "The amazing world of Gumball"
  ];
  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _index = listDevice[_room][_id]['index'];
    _volume = listDevice[_room][_id]['volume'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minVolume = 0;
  final int _maxVolume = 100;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
  }

  void _incrementVolume() {
    setState(() {
      if (_volume < _maxVolume && _status) {
        _volume++;
        listDevice[_room][_id]['volume'] = _volume;
      }
    });
  }

  void _decreaseVolume() {
    setState(() {
      if (_volume > _minVolume && _status) {
        _volume--;
        listDevice[_room][_id]['volume'] = _volume;
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
                icon: Icons.tv_outlined,
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
                      height: 20,
                    ),
                    ChannelController(
                      leftButtFunc: () {
                        setState(() {
                          _index = (_index + 1) % channel.length;
                          listDevice[_room][_id]['index'] = _index;
                        });
                      },
                      rightButtFunc: () {
                        setState(() {
                          _index = (_index - 1) % channel.length;
                          listDevice[_room][_id]['index'] = _index;
                        });
                      },
                      status: _status,
                      channel: channel[_index],
                      programme: programme[_index],
                      leftTitle: 'Previous',
                      rightTitle: 'Next',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseVolume,
                      rightButtFunc: _incrementVolume,
                      label: "Volume",
                      value: _volume.toString(),
                      status: _status,
                      leftTitle: 'Decrease',
                      rightTitle: 'Increase',
                    )
                  ]),
            )
          ],
        ));
  }
}
