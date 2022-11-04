import 'package:flutter/material.dart';
import '../screens/categoreis_screen.dart';
import 'profile_screen.dart';

class TabsScreen extends StatefulWidget {
  static String id = 'Tabs_screen';

  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  int _selectedScreenIndex = 0;

  late List<Map<String, Object>> _screens;

  @override
  void initState() {
    _screens = [
      {
        'Screen': const Categories(),
        'Title': 'Find your Destination',
      },
      {
        'Screen': const ProfileScreen(),
        'Title': ' Profile',
      }
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          _screens[_selectedScreenIndex]['Title'] as String,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color:  Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color:  Colors.grey,
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
