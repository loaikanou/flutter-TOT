import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Welcome',
        textDirection: TextDirection.ltr,
        style: TextStyle(fontSize: 32.0),
      ),
    );
  }
}
