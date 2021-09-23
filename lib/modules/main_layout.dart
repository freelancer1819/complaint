import 'package:complaints/consts/const_colors.dart';
import 'package:complaints/screens/body_screens/home_screen.dart';
import 'package:complaints/screens/body_screens/notification_screen.dart';
import 'package:complaints/screens/body_screens/person_screen.dart';
import 'package:flutter/material.dart';

class Layout extends StatefulWidget {
  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  int _curentIndex=1;
  List screens=[
    PersonScreen(),
    HomeScreen(),
    NotifiyScreen(),
  ];
  List titles=[
    'الشخصية',
    'الرئسية',
    'الاشعارات'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: KsecondColor,
        elevation: 0,
        centerTitle: true,
        title: Text(titles[_curentIndex]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value){
          setState(() {
            _curentIndex=value;
          });
        },
        elevation: 0,
        selectedItemColor: KmainColor,
        currentIndex: _curentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_sharp,
            ),
            label: 'الصفحة الشخصيه'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'الصفحة الرئسية'
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.notification_important_rounded,
              ),
              label: 'الإشعارات'
          ),
        ],
      ),
      body: screens[_curentIndex],
    );
  }
}
