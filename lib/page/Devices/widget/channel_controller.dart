import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class ChannelController extends StatelessWidget {
  final Function() left_butt_func;
  final Function() right_butt_func;

  final String channel;
  final String programme;

  final bool status;
  const ChannelController(
      {super.key,
      required this.left_butt_func,
      required this.right_butt_func,
      required this.status,
      required this.channel,
      required this.programme});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          channel,
          style: TextStyle(fontSize: 40),
        ),
        Container(
          width: 420,
          height: 60,
          color: status
              ? const Color.fromRGBO(248, 221, 125, 0.45)
              : const Color(0xffD9D9D9),
          child: Marquee(
            text: programme,
            style: TextStyle(fontSize: 30),
            velocity: 25.0,
            startPadding: 10.0,
            blankSpace: 20.0,
            pauseAfterRound: Duration(seconds: 1),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ElevatedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStateProperty.all<CircleBorder>(
                      CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: left_butt_func,
                child: Icon(
                  Icons.skip_previous_outlined,
                  size: 90,
                  color: Colors.black,
                )),
            const SizedBox(
              width: 100,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<CircleBorder>(
                      CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: right_butt_func,
                child: Icon(
                  Icons.pause,
                  size: 90,
                  color: Colors.black,
                )),
            const SizedBox(
              width: 100,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    alignment: Alignment.center,
                    shape: MaterialStateProperty.all<CircleBorder>(
                      CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: right_butt_func,
                child: Icon(
                  Icons.skip_next_outlined,
                  size: 90,
                  color: Colors.black,
                )),
          ],
        ),
      ],
    );
  }
}
