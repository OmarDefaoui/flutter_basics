import 'package:flutter/material.dart';

class AlertDialogWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State<AlertDialogWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: _neverSatisfied,
          child: Text("Show alert dialog"),
        ),
      ),
    );
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Alert title'),
          backgroundColor: Colors.white,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('First line.'),
                Text('second line.'),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Close', style: TextStyle(color: Colors.blue)),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
