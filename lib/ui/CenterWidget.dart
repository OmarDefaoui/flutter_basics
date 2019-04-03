import 'package:flutter/material.dart';

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Text(
          "Hello world !",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 40,
          ),
        ),
      ),
    );
  }
}