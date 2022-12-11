import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/devices_main.dart';
import 'package:human_com/widget/page.dart';

class Camera extends StatefulWidget {
  Camera({Key key}) : super(key: key);
  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  void initState() {
    super.initState();
    _currentCam = 0;
  }

  int _currentCam;
  List<Image> _imgList = [
    Image.asset(
      'assets/imgs/living_room.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/imgs/garage.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/imgs/yard.jpg',
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/imgs/pool.jpg',
      fit: BoxFit.cover,
    ),
  ];
  List<String> _camList = ['Living room', 'Garage', 'Yard', 'Pool'];
  @override
  Widget build(BuildContext context) {
    return PageApp(
        title: "Camera",
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _currentCam = 0;
                    });
                  },
                  child: Text(
                    'All',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          _currentCam == 0
                              ? Color(0xFF2ABBAA)
                              : Color(0xFFD9D9D9)),
                      fixedSize:
                          MaterialStateProperty.all<Size>(const Size(200, 65)),
                      shadowColor:
                          MaterialStateProperty.all<Color>(Colors.black)),
                ),
                SizedBox(
                  height: 30,
                ),
                for (var i = 0; i < _camList.length; i++) ...[
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentCam = i + 1;
                      });
                    },
                    child: Text(
                      _camList[i],
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.all<Color>(
                            _currentCam == i + 1
                                ? Color(0xFF2ABBAA)
                                : Color(0xFFD9D9D9)),
                        fixedSize: MaterialStateProperty.all<Size>(
                            const Size(200, 65)),
                        shadowColor:
                            MaterialStateProperty.all<Color>(Colors.black)),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ]
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Flexible(
              child: _currentCam == 0
                  ? Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: [
                        for (var i = 0; i < _imgList.length; i++)
                          Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 5,
                                ),
                              ),
                              width: 600,
                              height: 300,
                              child: _imgList[i]),
                      ],
                    )
                  : Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 5,
                        ),
                      ),
                      width: 1210,
                      height: 610,
                      child: _imgList[_currentCam - 1]),
            )
          ],
        ));
  }
}
