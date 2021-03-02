import 'package:document_collector/screens/add_screen.dart';
import 'package:document_collector/screens/history_screen.dart';
import 'package:document_collector/screens/home_screen.dart';
import 'package:document_collector/screens/menu_screen.dart';
import 'package:document_collector/screens/status_screen.dart';
import 'package:flutter/material.dart';

class AllNavBarItem extends StatefulWidget {
  @override
  _AllNavBarItemState createState() => _AllNavBarItemState();
}

class _AllNavBarItemState extends State<AllNavBarItem> {
  int _selectedIndex = 0;
  List _screenList = [
    HomeScreen(),
    StatusScreen(),
    AddScreen(),
    HistoryScreen(),
    MenuScreen(),
  ].toList();
  var _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.lightBlue,
        unselectedItemColor: Color(0xFFA8C3EC),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.source_outlined),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_sharp),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          _selectedIndex = index;
          _pageController.animateToPage(_selectedIndex, duration: Duration(milliseconds: 250), curve: Curves.linear);
        },
      ),
      body: PageView(
        children: _screenList,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        controller: _pageController,
      ),
    );
  }
}
