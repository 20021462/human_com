import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class AirConditioner extends StatefulWidget {
  const AirConditioner(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  @override
  State<AirConditioner> createState() => _AirConditionerState();
}

class _AirConditionerState extends State<AirConditioner> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _fanspeed;
  int _temperature;
  bool _favorite;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _fanspeed = listDevice[_room][_id]['fanspeed'];
    _temperature = listDevice[_room][_id]['temperature'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minFanspeed = 1;
  final int _maxFanspeed = 3;

  final int _minTemperature = 16;
  final int _maxTemperature = 30;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
  }

  void _incrementFanSpeed() {
    setState(() {
      if (_fanspeed < _maxFanspeed && _status) {
        _fanspeed++;
        listDevice[_room][_id]['fanspeed'] = _fanspeed;
      }
    });
  }

  void _decreaseFanSpeed() {
    setState(() {
      if (_fanspeed > _minFanspeed && _status) {
        _fanspeed--;
        listDevice[_room][_id]['fanspeed'] = _fanspeed;
      }
    });
  }

  void _incrementTemperature() {
    setState(() {
      if (_temperature < _maxTemperature && _status) {
        _temperature++;
        listDevice[_room][_id]['temperature'] = _temperature;
      }
    });
  }

  void _decreaseTemperature() {
    setState(() {
      if (_temperature > _minTemperature && _status) {
        _temperature--;
        listDevice[_room][_id]['temperature'] = _temperature;
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
              icon: Icons.air,
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
                ControlButton(
                  leftButtFunc: _decreaseTemperature,
                  rightButtFunc: _incrementTemperature,
                  label: "Temperature",
                  value: "$_temperature℃",
                  status: _status,
                ),
                const SizedBox(
                  height: 30,
                ),
                ControlButton(
                  leftButtFunc: _decreaseFanSpeed,
                  rightButtFunc: _incrementFanSpeed,
                  label: "Fanspeed",
                  value: _fanspeed.toString(),
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
