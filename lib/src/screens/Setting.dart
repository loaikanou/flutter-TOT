import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Application| Settings'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {Navigator.pop(context);},
            ),
          ],
          centerTitle: false,
          backgroundColor: Colors.green,
          leading: Icon(Icons.android),
        ),
        body: Center(
          child: Text('Settings')
        ),
      )
    );
  }
}