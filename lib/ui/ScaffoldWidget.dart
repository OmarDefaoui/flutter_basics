import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void printOnClick() {
      debugPrint("Click from function");
    }

    return Scaffold(
      backgroundColor: Colors.amberAccent, //background of the body

      appBar: AppBar(
        title: Text("App bar title"),
        backgroundColor: Colors.blue.shade500,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.access_alarm),
            onPressed: () => debugPrint("Alarm clicked"),
            color: Colors.black,
          ),
          IconButton(
            icon: Icon(Icons.account_balance_wallet),
            onPressed: printOnClick,
            color: Colors.white,
          ),
        ],
      ),

      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.accessibility),
              onPressed: printOnClick,
              iconSize: 50,
              color: Colors.blueGrey,
            ),
            IconButton(
              icon: Icon(Icons.ac_unit),
              onPressed: printOnClick,
              iconSize: 50,
            ),
            Text(
              "This is a text",
              textDirection: TextDirection.ltr,
            ),
            InkWell(
              //clickable container where we can put textView for example
              child: Text(
                "Clickable text",
                textDirection: TextDirection.ltr,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              onLongPress: () => debugPrint("On long press"),
              onTap: () => debugPrint("On tap"),
              onDoubleTap: () => debugPrint("On double tap"),
            ),
          ],
        ),
      ),
    );
  }
}
