import 'package:flutter/material.dart';

import 'categories_screen.dart';
import 'favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Your Favorites'},
  ];

  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text( _pages[_selectedPageIndex]['title']),
        ),
        body: _pages[_selectedPageIndex]['page'],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).primaryColor,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).accentColor,
            currentIndex: _selectedPageIndex,
            selectedFontSize: 15,
            unselectedFontSize: 15,
            // type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.category),
                  title: Text('Categories')),
              BottomNavigationBarItem(
                  backgroundColor: Theme.of(context).primaryColor,
                  icon: Icon(Icons.star),
                  title: Text('Favorites')),
            ]),
      ),
    );
  }
}

// bottom: TabBar(
//                 tabs: <Widget>[
//                   Tab(icon: Icon(Icons.category), text: 'Categories'),
//                   Tab(icon: Icon(Icons.star), text: 'Favorites'),
//                 ],
//               )

// TabBarView(
//                 children: <Widget>[
//                   CategoriesScreen(),
//                   FavoritesScreen(),
//                 ]
//               )