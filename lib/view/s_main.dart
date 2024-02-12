import 'package:flutter/material.dart';
import 'package:mon_map/global_styles.dart';
import 'package:mon_map/view/community/f_community.dart';
import 'package:mon_map/view/home/f_home.dart';
import 'package:mon_map/view/map/f_map.dart';

// 메인 화면입니다.
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _bottomNavIndex = 1;

  void _onItemTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  final List<Widget> _widgetOptions = [
    MapFragment(),
    HomeFragment(),
    CommunityFragment(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: _widgetOptions.elementAt(_bottomNavIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        selectedItemColor: Palette.primary,
        backgroundColor: Colors.indigo[50],
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '지도',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_alt_rounded),
            label: '커뮤니티',
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
