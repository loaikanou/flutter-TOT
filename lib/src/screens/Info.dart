import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Info extends StatefulWidget {
  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
  AlertDialog dialog = new AlertDialog(
      content: new Text(
    "loai.net@gmail.com",
    style: new TextStyle(fontSize: 30.0),
  ));
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.green,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.supervised_user_circle),
                title: Text('Loai N Kanou'),
                subtitle: Text('This Sample Application using flutter :)'),
              ),
              ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: ButtonBar(
                  children: <Widget>[
                    FlatButton(
                      child: const Text('Call Me'),
                      onPressed: () => launch("tel://00966501673338"),
                    ),
                    FlatButton(
                      child: const Text('Email'),
                      onPressed: () {showDialog(context: context, builder: (BuildContext context) => dialog);},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        alignment: Alignment(0.0, 0.0),
      ),
    );
  }
}