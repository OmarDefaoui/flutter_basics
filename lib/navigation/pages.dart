import 'package:flutter/material.dart';
import 'package:flutter_app/navigation/first.dart';
import 'package:flutter_app/navigation/second.dart';
import 'package:flutter_app/navigation/third.dart';

class Pages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navigation",
      home: first(),
      routes: <String, WidgetBuilder>{
        '/first': (BuildContext context) => first(),
        '/second': (BuildContext context) => second(),
        '/third': (BuildContext context) => third(),
      },
    );
  }
}
