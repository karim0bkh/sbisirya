import 'package:flutter/material.dart';
import 'package:sbisirya/page/onboarding_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'sbisiriya',
      //theme: ThemeData(primarySwatch: Color(0xff6DC8B7)),
      theme: new ThemeData(
        scaffoldBackgroundColor: Color(0xffD1D5DB),
      ),

      home: OnBoardPage(),
    );
  }
}
