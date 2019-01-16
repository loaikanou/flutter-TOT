import 'package:flutter/material.dart';
import 'src/App.dart';

void main() {
  runApp(App());
}

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Application',
     home: App(),
   );
 }
}