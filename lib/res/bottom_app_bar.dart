import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:provider/provider.dart';

import '../view/all.dart';
import '../view/home_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    All(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _widgetOptions[_selectedIndex],
        bottomNavigationBar: Container(
          color: Color(0xffFAFAFA),
          child: Padding(
            padding: EdgeInsets.only(left: 45, right: 45, top: 10, bottom: 10),
            child: GNav(
              backgroundColor: Color(0xffFAFAFA),
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 4,
              activeColor: Colors.black,
              iconSize: 22,
              padding: EdgeInsets.all(12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey.shade200,
              color: Colors.black,
              tabs: [
                GButton(
                  icon: Icons.home_outlined,
                  text: 'APOD',
                ),
                GButton(
                  icon: Icons.heart_broken,
                  text: 'All',
                ),
                GButton(
                  icon: Icons.search,
                  text: 'favourite',
                ),
                GButton(
                  icon: Icons.verified_user,
                  text: 'Settings',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
