import 'package:flutter/material.dart';
import 'package:human_com/widget/page.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:slider_gradient/slider_gradient.dart';

var fontSize = 50;

class FontSizePage extends StatefulWidget {
  const FontSizePage({Key key}) : super(key: key);

  @override
  State<FontSizePage> createState() => _FontSizePageState();
}

class _FontSizePageState extends State<FontSizePage> {
  @override
  Widget build(BuildContext context) {
    return PageApp(
      title: 'Font Size',
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 550,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Main text will look like this:',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize.toDouble(),
                    ),
                  ),
                  Text(
                    '1234567890!@#\$%^&*()_+-=',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: fontSize.toDouble(),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(
                  width: 1500,
                  child: Text(
                    'Font size',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 50,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: 1200,
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 60,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5F8FF),
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Transform.scale(
                            scale: 2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: const Color(0xFFFE9800),
                              ),
                              onPressed: () {
                                setState(() {
                                  fontSize--;
                                });
                              },
                              child: const Icon(
                                Icons.remove,
                                size: 50,
                              ),
                            ),
                          ),
                          Container(
                            width: 270,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: const Color(0xFF2ABBAA),
                            ),
                            child: Text(
                              fontSize.toString(),
                              style: const TextStyle(fontSize: 80),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Transform.scale(
                            scale: 2,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                shape: const CircleBorder(),
                                backgroundColor: const Color(0xFFFE9800),
                              ),
                              onPressed: () {
                                setState(() {
                                  fontSize++;
                                });
                              },
                              child: const Icon(
                                Icons.add,
                                size: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      SliderGradient(
                        min: 20,
                        max: 120,
                        colors: const [
                          Color(0xFFAFEBF3),
                          Color(0xFF2ABBAA),
                        ],
                        value: fontSize.toDouble(),
                        onChange: (SliderData data) {
                          setState(() {
                            fontSize = data.value.toInt();
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
