import 'package:flutter/material.dart';
import 'GlobalState.dart';

class second extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _second();
  }
}

class _second extends State<second> {
  GlobalState _store = GlobalState.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("2nd page"),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "/first", (Route<dynamic> route) => false);
            },
            child: Text("Go home"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/third");
            },
            child: Text("Go to 3rd page"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pop(); //go to the previous page
            },
            child: Text("Go back"),
          ),
          Text("Your name is: ${_store.get("name")}"),
        ],
      ),
    );
  }
}
