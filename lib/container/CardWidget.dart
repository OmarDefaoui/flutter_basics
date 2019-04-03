import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              color: Colors.yellowAccent,
              child: Column(
                children: <Widget>[
                  Text("Title"),
                  Text('Body'),
                  RaisedButton(
                    onPressed: null,
                    child: Text('Button'),
                  )
                ],
              ),
            ),
            Card(
              color: Colors.green,
              child: Column(
                children: <Widget>[
                  Text("Title"),
                  Text('Body'),
                  RaisedButton(
                    onPressed: null,
                    child: Text('Button'),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
