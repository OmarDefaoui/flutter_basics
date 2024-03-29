import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Container"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          constraints: BoxConstraints.expand(
            height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
          ),
          padding: const EdgeInsets.all(8.0),
          margin: EdgeInsets.all(40),
          color: Colors.teal.shade700,
          alignment: Alignment.center,
          child: Text(
            'Hello World',
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: Colors.white),
          ),
          foregroundDecoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage('https://www.example.com/images/frame.png'),
              centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
            ),
          ),
          transform: Matrix4.rotationZ(0.1),
        ),
      ),
    );
  }
}
