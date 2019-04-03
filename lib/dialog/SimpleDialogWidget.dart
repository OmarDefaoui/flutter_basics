import 'package:flutter/material.dart';

class SimpleDialogWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State<SimpleDialogWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          onPressed: _askedForAnswer,
          child: Text("Show simple dialog"),
        ),
      ),
    );
  }

  Future<void> _askedForAnswer() async {
    switch (await showDialog<Department>(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Select assignment'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.treasury);
                },
                child: const Text('Treasury department'),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(context, Department.state);
                },
                child: const Text('State department'),
              ),
            ],
          );
        })) {
      case Department.treasury:
        debugPrint(Department.treasury.toString());
        break;
      case Department.state:
        debugPrint(Department.state.toString());
        break;
    }
  }
}

enum Department { treasury, state }
