import 'package:flutter/material.dart';

class VoicePage extends StatefulWidget {
  const VoicePage({Key key}) : super(key: key);

  @override
  State<VoicePage> createState() => _VoicePageState();
}

class _VoicePageState extends State<VoicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 900,
        height: 600,
        padding: const EdgeInsets.symmetric(vertical: 90),
        decoration: BoxDecoration(
          color: const Color(0xFF333333),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 60),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                backgroundColor: Color(0xFF007AFF),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.more_horiz,
                size: 100,
              ),
            ),
            const Text(
              'Say something...',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
