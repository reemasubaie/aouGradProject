import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../models/trip.dart';
import '../screens/categoreis_screen.dart';
import '../screens/Favorite_Screen.dart';

class TabsScreen extends StatefulWidget {
  //const TabsScreen({Key key}) : super(key: key);

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
        'Title': ' trips category',
      },
      {
        'Screen': FavoritesScreen(widget.favoriteTrips),
        'Title': 'Favorite trips',
      },
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex]['Title']as String),
      ),

      body: _screens[_selectedScreenIndex]['Screen'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectScreen,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Theme.of(context).accentColor,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedScreenIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Favorite',
          ),
        ],
      ),
    );
  }
}

// class TapsScreen extends StatefulWidget {
//   const TapsScreen({Key? key}) : super(key: key);
//
//   @override
//   State<TapsScreen> createState() => _TapsScreenState();
// }
//
// class _TapsScreenState extends State<TapsScreen> {
//   void _selectScreen(int index){
//     setState(() {
//       _selectedScreenIndex =index;
//     });
// }
// int _selectedScreenIndex=0;
//   List<Map<String, Object>>_screen;
//
//   @override
//   void initState() {
//     _screens = [
//       {
//         'Screen': Categories  (),
//         'Title': 'تصنيفات الرحلات',
//       },
//       {
//         'Screen': FavoritesScreen(widget.favoriteTrips),
//         'Title': 'الرحلات المفضلة',
//       },
//     ];
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(_screens[_selectedScreenIndex]['Title']),
//       ),
//
//       body:_screens[_selectedScreenIndex]['Screen'],
//       bottomNavigationBar: BottomNavigationBar(
//         onTap: _selectScreen,
//         backgroundColor: Colors.green,
//         selectedItemColor: Theme.of(context).primaryColor,
//         unselectedItemColor: Colors.white,
//         currentIndex: _selectedScreenIndex,
//         items: [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.dashboard),
//             label: 'categories',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.star),
//             label: 'Favorite',
//           ),
//         ],
//       ),
//     );
//   }
// }
