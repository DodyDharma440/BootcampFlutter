import 'package:flutter/material.dart';
import 'package:sanberappflutter/home_page.dart';
import 'package:sanberappflutter/setting_page.dart';
import 'package:sanberappflutter/search_page.dart';

class BottomNav extends StatefulWidget {
  final int initialIndex;

  const BottomNav({super.key, this.initialIndex = 0});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  final List<Widget> _childs = [
    const HomePage(),
    const SearchPage(),
    const SettingPage()
  ];

  @override
  void initState() {
    _currentIndex = widget.initialIndex;
    super.initState();
  }

  void onChangeTab(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _childs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: onChangeTab,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "Setting",
            ),
          ]),
    );
  }
}
