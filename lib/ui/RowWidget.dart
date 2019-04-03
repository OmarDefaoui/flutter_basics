import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Text1 ",
            textDirection: TextDirection.ltr,
          ),
          Text(
            "Text2 ",
            textDirection: TextDirection.ltr,
          ),
          Expanded( //write in match parent => use all the free space
            child: Text(
              "Long text",
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
  }
}
