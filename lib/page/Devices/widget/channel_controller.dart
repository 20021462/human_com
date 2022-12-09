import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class ChannelController extends StatelessWidget {
  final Function() leftButtFunc;
  final Function() rightButtFunc;

  final String channel;
  final String programme;

  final bool status;
  const ChannelController({
    Key key,
    this.leftButtFunc,
    this.rightButtFunc,
    this.status,
    this.channel,
    this.programme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          channel,
          style: const TextStyle(fontSize: 40),
        ),
        Container(
          width: 420,
          height: 60,
          color: status
              ? const Color.fromRGBO(248, 221, 125, 0.45)
              : const Color(0xffD9D9D9),
          child: Marquee(
            text: programme,
            style: const TextStyle(fontSize: 30),
            velocity: 25.0,
            startPadding: 10.0,
            blankSpace: 20.0,
            pauseAfterRound: const Duration(seconds: 1),
          ),
        ),
        const SizedBox(
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
                      const CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: leftButtFunc,
                child: const Icon(
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
                      const CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () {},
                child: const Icon(
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
                      const CircleBorder(),
                    ),
                    backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFE9800)),
                    fixedSize:
                        MaterialStateProperty.all<Size>(const Size(120, 120)),
                    shadowColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: rightButtFunc,
                child: const Icon(
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
