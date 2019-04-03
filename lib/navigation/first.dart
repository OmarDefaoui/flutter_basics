import 'package:flutter/material.dart';
import 'GlobalState.dart';

class first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _first();
  }
}

class _first extends State<first> {
  TextEditingController _name;
  GlobalState _store = GlobalState.instance;

  @override
  void initState() {
    _name = TextEditingController();
    _store.set("name", "");
    _name.text = _store.get("name");
  }

  void sendValue(BuildContext context) {
    _store.set("name", _name.text);
    Navigator.of(context).pushNamed("/second");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar"),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("1st page"),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamedAndRemoveUntil(
                  "/first",
                      (Route<dynamic> route) =>
                  false); //don't remember previous pages
            },
            child: Text("Go home"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context)
                  .pushNamed("/second"); //go to page that have this name
            },
            child: Text("Go to 2nd page"),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/third");
            },
            child: Text("Go back"),
          ),
          TextField(
            decoration: InputDecoration(labelText: "Enter name"),
            controller: _name,
          ),
          RaisedButton(
            onPressed: () {
              sendValue(context);
            },
            child: Text("Send value"),
          ),
        ],
      ),
    );
  }
}
