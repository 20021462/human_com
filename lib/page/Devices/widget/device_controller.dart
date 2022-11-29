import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  final Function() left_butt_func;
  final Function() right_butt_func;
  final String label;
  final String value;
  final bool status;
  const ControlButton(
      {super.key,
      required this.left_butt_func,
      required this.right_butt_func,
      required this.label,
      required this.value,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ElevatedButton(
            style: ButtonStyle(
                shape: MaterialStateProperty.all<CircleBorder>(
                  CircleBorder(),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFE9800)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(120, 120)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: left_butt_func,
            child: Icon(
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
              style: TextStyle(fontSize: 50),
            ),
            status
                ? Container(
                    width: 204,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(248, 221, 125, 0.45),
                    ),
                    child: Center(
                      child: Text(
                        value,
                        style: TextStyle(
                          fontSize: 70,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : Container(
                    width: 204,
                    height: 100,
                    decoration: BoxDecoration(
                      color: const Color(0xffD9D9D9),
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
                  CircleBorder(),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFFFE9800)),
                fixedSize:
                    MaterialStateProperty.all<Size>(const Size(120, 120)),
                shadowColor: MaterialStateProperty.all<Color>(Colors.black)),
            onPressed: right_butt_func,
            child: Icon(
              Icons.add,
              size: 90,
              color: Colors.black,
            )),
      ],
    );
  }
}
