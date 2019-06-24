import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Images"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.network(
              "https://pic.clubic.com/v1/images/1708593/raw",
            ),
            Icon(
              Icons.access_alarms,
              color: Colors.blue,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
