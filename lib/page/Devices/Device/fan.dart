import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class Fan extends StatefulWidget {
  const Fan(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  static const IconData icon = Icons.wind_power_outlined;
  @override
  State<Fan> createState() => _FanState();
}

class _FanState extends State<Fan> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _fanspeed;
  int _humidity;
  bool _favorite;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _fanspeed = listDevice[_room][_id]['fanspeed'];
    _humidity = listDevice[_room][_id]['humidity'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minFanspeed = 1;
  final int _maxFanspeed = 3;

  final int _minHumidity = 45;
  final int _maxHumidity = 55;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
  }

  void _incrementFanSpeed() {
    setState(() {
      if (_fanspeed < _maxFanspeed && _status) {
        _fanspeed++;
      }
    });
  }

  void _decreaseFanSpeed() {
    setState(() {
      if (_fanspeed > _minFanspeed && _status) {
        _fanspeed--;
      }
    });
  }

  void _incrementHumidity() {
    setState(() {
      if (_humidity < _maxHumidity && _status) {
        _humidity++;
      }
    });
  }

  void _decreaseHumidity() {
    setState(() {
      if (_humidity > _minHumidity && _status) {
        _humidity--;
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
              icon: Icons.wind_power,
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
                    });
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ControlButton(
                  leftButtFunc: _decreaseFanSpeed,
                  rightButtFunc: _incrementFanSpeed,
                  label: "Fan speed",
                  value: _fanspeed.toString(),
                  status: _status,
                ),
                const SizedBox(
                  height: 30,
                ),
                ControlButton(
                  leftButtFunc: _decreaseHumidity,
                  rightButtFunc: _incrementHumidity,
                  label: "Humidity",
                  value: "$_humidity%",
                  status: _status,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
