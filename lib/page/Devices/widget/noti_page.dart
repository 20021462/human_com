import 'package:flutter/material.dart';
import 'package:human_com/page/Devices/widget/noti.dart';

class NotiPage1 extends StatelessWidget {
  final PageController pageController;
  const NotiPage1({
    @required this.pageController,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        OutlinedButton(
            style: ButtonStyle(
                alignment: Alignment.center,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF2ABBAA)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(80, 220)),
                side: MaterialStateProperty.all(const BorderSide(
                    color: Color(0xff5E899A),
                    width: 5.0,
                    style: BorderStyle.solid))),
            onPressed: () {
              pageController.previousPage(
                  duration: Duration(milliseconds: 300), curve: Curves.ease);
            },
            child: Icon(
              Icons.arrow_back_ios,
              size: 80,
              color: Colors.black,
            )),
        SizedBox(
          width: 30,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Today - Thursday, December 12, 2022',
              style: TextStyle(
                  fontSize: 60, color: Colors.black, fontFamily: 'Inter'),
            ),
            const SizedBox(
              height: 30,
            ),
            Noti(
              content: 'The front door still opens. Remember to lock it!',
              time: '10:05',
              read: false,
            ),
            const SizedBox(
              height: 30,
            ),
            Noti(
              content:
                  'TV has been on for 3 hours. Do you want to turn it off?',
              time: '9:05',
              read: true,
            ),
          ],
        ),
        SizedBox(
          width: 30,
        ),
        OutlinedButton(
            style: ButtonStyle(
                alignment: Alignment.center,
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                backgroundColor:
                    MaterialStateProperty.all<Color>(const Color(0xFF2ABBAA)),
                fixedSize: MaterialStateProperty.all<Size>(const Size(80, 220)),
                side: MaterialStateProperty.all(const BorderSide(
                    color: Color(0xff5E899A),
                    width: 5.0,
                    style: BorderStyle.solid))),
            onPressed: () {
              pageController.nextPage(
                  duration: Duration(milliseconds: 300), curve: Curves.ease);
            },
            child: Icon(
              Icons.arrow_forward_ios,
              size: 80,
              color: Colors.black,
            )),
      ],
    );
  }
}
