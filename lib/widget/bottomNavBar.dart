import 'package:final_exam/data/data2.dart';
import 'package:final_exam/page/profile.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Readcsv2(),
    ),
    /* Text(
      'Index 1: Business',
      style: optionStyle,
    ), */
    Center(
      child: Profile(),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'หน้าแรก',
          ),
          /* BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ), */
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'ผู้จัดทำ',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        unselectedFontSize: 14.0,
        selectedFontSize: 14.0,
      ),
    );
  }
}
