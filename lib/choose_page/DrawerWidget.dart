import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
      ),

      //drawer
      drawer: Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Firt item",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            Text(
              "Second item",
              style: TextStyle(color: Colors.black, fontSize: 20),
            ),
            RaisedButton(
              onPressed: () => Navigator.pop(context), //close drawer programmatically
              child: Text("Close"),
            )
          ],
        ),
      ),
    );
  }
}
