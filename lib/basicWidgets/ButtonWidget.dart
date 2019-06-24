import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //don't resize the page when the keyboard appear
      appBar: AppBar(
        title: Text("Button"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: null,
              child: const Text('Disabled Button'),
            ),
            RaisedButton(
              onPressed: () {},
              color: Colors.blue,
              child: const Text(
                'Enabled Button',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
            RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: const EdgeInsets.all(0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Colors.red,
                      Colors.green,
                      Colors.blue,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: Text('Gradient Button'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
