import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      color: Colors.amber,
      alignment: Alignment.centerRight,
      //alignment: Alignment(0,1), //max width and height: 1
      child: Text(
        "Text",
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: Colors.blue,
        ),
      ),
    );
  }
}
