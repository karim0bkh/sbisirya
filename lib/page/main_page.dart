import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sbisirya/models/feed_page.dart';
import 'package:sbisirya/models/home_page.dart';
import 'package:sbisirya/models/profile_page.dart';
import 'package:sbisirya/models/search_page.dart';
import 'package:sbisirya/models/store_page.dart';

import '../models/orders_page.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  final screens = [
    HomePage(),
    OrdersPage(),
    profilPage(),
    searchPage(),
    feedPage(),
  ];
  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const <BottomNavigationBarItem>[
          /// Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //title: Text("Home"),
            //selectedColor: Color(0xffF05423),
          ),

          /// store
          BottomNavigationBarItem(
            icon: Icon(Icons.store),
            label: 'Orders',

            //title: Text("Store"),
            //selectedColor: Color(0xffF05423),
          ),

          /// Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',

            //title: Text("Profile"),
            //selectedColor: Color(0xffF05423),
          ),

          /// Search
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',

            //title: Text("Search"),
            //selectedColor: Color(0xffF05423),
          ),

          /// feed
          BottomNavigationBarItem(
            icon: Icon(Icons.feed),
            label: 'Donors',

            //title: Text("feed"),
            //selectedColor: Color(0xffF05423),
          ),
        ],
        selectedItemColor: Color(0xffF05423),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
