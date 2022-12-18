import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  final Function() leftButtFunc;
  final Function() rightButtFunc;
  final String label;
  final String value;
  final String leftTitle;
  final String rightTitle;
  final bool status;
  const ControlButton({
    Key key,
    this.leftButtFunc,
    this.rightButtFunc,
    this.label,
    this.value,
    this.status,
    this.leftTitle,
    this.rightTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Column(
          children: [
            Text(
              leftTitle,
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
        SizedBox(
          width: 15,
        ),
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFE9800)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(120, 120)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: leftButtFunc,
            child: const Icon(
              Icons.remove,
              size: 90,
              color: Colors.black,
            )),
        const SizedBox(
          width: 100,
        ),
        Column(
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 50),
            ),
            status
                ? Container(
                    width: 204,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color.fromRGBO(248, 221, 125, 0.45),
                    ),
                    child: Center(
                      child: Text(
                        value,
                        style: const TextStyle(
                          fontSize: 70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : Container(
                    width: 204,
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xffD9D9D9),
                    ),
                  )
          ],
        ),
        const SizedBox(
          width: 100,
        ),
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                  const CircleBorder(),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFE9800)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(120, 120)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: rightButtFunc,
            child: const Icon(
              Icons.add,
              size: 90,
              color: Colors.black,
            )),
        SizedBox(
          width: 15,
        ),
        Column(
          children: [
            Text(
              rightTitle,
              style: TextStyle(color: Colors.black, fontSize: 40),
            ),
            SizedBox(
              height: 30,
            )
          ],
        ),
      ],
    );
  }
}
