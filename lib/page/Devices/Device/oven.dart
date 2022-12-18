import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/page/Devices/widget/device_controller.dart';
import 'package:human_com/page/Devices/widget/device_scaffold.dart';
import 'package:human_com/page/Devices/widget/device_status.dart';
import 'package:human_com/page/Devices/widget/power_button.dart';

class Oven extends StatefulWidget {
  const Oven(this.room, this.id, {Key key}) : super(key: key);
  final String room;
  final int id;
  @override
  State<Oven> createState() => _OvenState();
}

class _OvenState extends State<Oven> {
  int _id;
  String _room;
  String _name;
  bool _status;
  int _temperature;
  int _timerH;
  int _timerM;
  bool _favorite;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
    _room = widget.room;
    _name = listDevice[_room][_id]['name'];
    _status = listDevice[_room][_id]['status'];
    _temperature = listDevice[_room][_id]['temperature'];
    _timerH = listDevice[_room][_id]['timerH'];
    _timerM = listDevice[_room][_id]['timerM'];
    _favorite = listDevice[_room][_id]['favorite'];
  }

  final int _minTemperature = 60;
  final int _maxTemperature = 250;

  final int _minTimer = 0;
  final int _maxTimer = 59;

  void setFavorite() {
    _favorite = !_favorite;
    listDevice[_room][_id]['favorite'] = _favorite;
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

  void _incrementTimer() {
    setState(() {
      if (_timerM < _maxTimer && _status) {
        _timerM++;
      } else if (_timerM >= _maxTimer && _status) {
        _timerH++;
        _timerM = 0;
      }
      listDevice[_room][_id]['timerH'] = _timerH;
      listDevice[_room][_id]['timerM'] = _timerM;
    });
  }

  void _decreaseTimer() {
    setState(() {
      if (_timerM > _minTimer && _timerH > _minTimer && _status) {
        _timerM--;
      } else if (_timerM <= _minTimer && _timerH > _minTimer && _status) {
        _timerH--;
        _timerM = 59;
      }
      listDevice[_room][_id]['timerH'] = _timerH;
      listDevice[_room][_id]['timerM'] = _timerM;
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
                icon: Icons.microwave_outlined,
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
                      value: '$_temperature℃',
                      status: _status,
                      leftTitle: 'Decrease',
                      rightTitle: 'Increase',
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ControlButton(
                      leftButtFunc: _decreaseTimer,
                      leftTitle: 'Decrease',
                      rightTitle: 'Increase',
                      rightButtFunc: _incrementTimer,
                      label: "Timer",
                      value: "$_timerH:$_timerM",
                      status: _status,
                      // leftTitle: 'Decrease',
                      // rightTitle: 'Increase',
                    )
                  ]),
            )
          ],
        ));
  }
}
