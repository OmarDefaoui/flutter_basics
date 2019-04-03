import 'package:flutter/material.dart';

class third extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _third();
  }
}

class _third extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("3rd page"),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil("/first",
                      (Route<dynamic> route) => false);
            },
            child: Text("Go home"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamedAndRemoveUntil("/first",
                      (Route<dynamic> route) => false);
            },
            child: Text("Go to 1st page"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/second");
            },
            child: Text("Go back"),
          ),
        ],
      ),
    );
  }
}
