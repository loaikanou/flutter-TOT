import 'package:flutter/material.dart';
import 'screens/Home.dart';
import 'screens/List.dart';
import 'screens/Info.dart';
import 'screens/Setting.dart';

class App extends StatefulWidget {
  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int _selectedIndex = 0;
  final _widgetOptions = [
    Home(),
    List(),
    Info(),
  ];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Application'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              tooltip: 'Navigation to Setting',
              onPressed: () {
                Navigator.push(
                  context,
                  new MaterialPageRoute(builder: (context) => new Setting()),
                );
              },
            ),
          ],
          centerTitle: true,
          backgroundColor: Colors.green,
          leading: Icon(Icons.android),
        ),
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.dehaze), title: Text('List')),
            BottomNavigationBarItem(
                icon: Icon(Icons.copyright), title: Text('info')),
          ],
          iconSize: 40.0,
          currentIndex: _selectedIndex,
          fixedColor: Colors.green,
          onTap: onItemClick,
        ),
      ),
    );
  }

  void onItemClick(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
