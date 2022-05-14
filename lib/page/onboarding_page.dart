import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sbisirya/page/main_page.dart';

class OnBoardPage extends StatelessWidget {
  const OnBoardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: IntroductionScreen(
          pages: [
            PageViewModel(
              title: 'test test test test test',
              body: 'test test test test test test test test test test ',
              image: buildImage('assets/main.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'test test test test test',
              body: 'test test test test test test test test test test ',
              image: buildImage('assets/main.png'),
              decoration: getPageDecoration(),
            ),
            PageViewModel(
              title: 'test test test test',
              body: 'test test test test test test test test test test ',
              image: buildImage('assets/main.png'),
              decoration: getPageDecoration(),
            ),
          ],
          done: Text('Get Started',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                background: Paint()
                  ..strokeWidth = 18.5
                  ..color = Color(0xffF05423)
                  ..style = PaintingStyle.stroke
                  ..strokeJoin = StrokeJoin.round,
              )),
          onDone: () => goToHome(context),
          showNextButton: true,
          showSkipButton: true,
          skip: Text(
            '    Skip    ',
            style: TextStyle(
              background: Paint()
                ..strokeWidth = 18.5
                ..color = Color(0xff6DC8B7)
                ..style = PaintingStyle.stroke
                ..strokeJoin = StrokeJoin.round,
            ),
          ),
          next: Text(
            '    Next    ',
            style: TextStyle(
              background: Paint()
                ..strokeWidth = 18.5
                ..color = Color(0xff6DC8B7)
                ..style = PaintingStyle.stroke
                ..strokeJoin = StrokeJoin.round,
            ),
          ),
          dotsDecorator: getDotDecoration(),
          animationDuration: 500,
        ),
      );

  void goToHome(context) => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => MyApp()),
      );

  Widget buildImage(String path) =>
      Center(child: Image.asset(path, width: 370));
  DotsDecorator getDotDecoration() =>
      DotsDecorator(color: Color(0xffF79963), activeColor: Color(0xffF05423));
  PageDecoration getPageDecoration() => PageDecoration(
        titleTextStyle: TextStyle(
          background: Paint()
            ..strokeWidth = 40.0
            ..color = Color(0xff6DC8B7)
            ..style = PaintingStyle.stroke
            ..strokeJoin = StrokeJoin.round,
          fontSize: 28,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        titlePadding: EdgeInsets.all(24.0),
        bodyTextStyle: TextStyle(fontSize: 20),
        descriptionPadding: EdgeInsets.all(16).copyWith(bottom: 0),
        imagePadding: EdgeInsets.all(24),
        pageColor: Colors.white,
      );
}
