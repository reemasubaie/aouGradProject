import 'package:flutter/material.dart';
import 'package:saudi_toursim_guide/constants.dart';
import '../models/trip.dart';
import '../screens/categoreis_screen.dart';
import '../screens/Favorite_Screen.dart';
import 'profile_screen.dart';

class TabsScreen extends StatefulWidget {
  static String id = 'Tabs_screen';

  final List<Trip> favoriteTrips;

  TabsScreen(this.favoriteTrips);
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
        'Screen': categories(),
        'Title': 'Find your Destination',
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'Favorite trips',
      },
      {
        'Screen': ProfileScreen(),
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
        title: Text(_screens[_selectedScreenIndex]['Title'] as String,
        style: TextStyle(color: Colors.black),),
      ),
      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.dashboard,
              color: _selectedScreenIndex == 0 ? Colors.white : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.star,
              color: _selectedScreenIndex == 1 ? Colors.white : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: _selectedScreenIndex == 2 ? Colors.white : Colors.grey,
            ),
            label: '',
          )
        ],
      ),
    );
  }
}
