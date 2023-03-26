import 'package:flutter/material.dart';

import './home_screen.dart';
import './map_screen.dart';
import './qr_code_scanner_screen.dart';
import './rankings_screen.dart';
import '../widgets/main_drawer.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  List<Map<String, Object>> _pages = [];
  int _selectedPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pages = [
      {'title': 'Home', 'page': HomeScreen()},
      {'title': 'Rankings', 'page': RankingsScreen()},
      {'title': 'Map', 'page': MapScreen()},
      {'title': 'Scan It', 'page': QrCodeScannerScreen()},
    ];
  }

  void _selectPage(int index) {
    // index passed automatically given by flutter
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'] as String,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).colorScheme.primary,
        selectedItemColor: Theme.of(context).colorScheme.tertiary,
        unselectedItemColor: Theme.of(context).colorScheme.secondary,
        currentIndex: _selectedPageIndex,
        type: BottomNavigationBarType.shifting,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_mini_rounded,
              size: 30,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.trending_up_rounded,
              size: 30,
            ),
            label: 'Rankings',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.place_rounded,
              size: 30,
            ),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.qr_code_scanner_rounded,
              size: 30,
            ),
            label: 'Scan It',
          ),
        ],
      ),
    );
  }
}
