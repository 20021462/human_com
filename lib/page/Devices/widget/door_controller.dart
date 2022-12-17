import 'package:flutter/material.dart';

class DoorControl extends StatefulWidget {
  final String doorName;
  // final bool locked;
  const DoorControl({Key key, this.doorName});

  @override
  State<DoorControl> createState() => _DoorControlState();
}

class _DoorControlState extends State<DoorControl> {
  bool _locked;

  @override
  void initState() {
    super.initState();
    _locked = true;
  }

  void _lock_function() {
    setState(() {
      _locked = !_locked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100,
          width: 450,
          alignment: Alignment.center,
          decoration: new BoxDecoration(
            color: Color(0xFFA2D5EB),
          ),
          child: Text(
            widget.doorName.toString(),
            style: TextStyle(color: Colors.black, fontSize: 70),
          ),
        ),
        const SizedBox(
          width: 180,
        ),
        Icon(
          _locked ? Icons.lock_outline : Icons.lock_open_outlined,
          size: 100,
        ),
        const SizedBox(
          width: 180,
        ),
        ElevatedButton(
          onPressed: _lock_function,
          child: Text(
            "${_locked ? "Unlock" : "Lock"}",
            style: TextStyle(color: Colors.black, fontSize: 60),
          ),
          style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              backgroundColor: MaterialStateProperty.all<Color>(
                  _locked ? Color(0xFF2ABBAA) : Color(0xFFFF6231)),
              fixedSize: MaterialStateProperty.all<Size>(const Size(260, 100)),
              shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
        ),
      ],
    );
  }
}
