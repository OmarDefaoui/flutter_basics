import 'package:flutter/material.dart';

class TextInputCheckBoxWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State<TextInputCheckBoxWidget> {
  //for text field
  String input = "";
  String value = "";

  void displayInputValue(String text) {
    setState(() {
      input = text;
    });
  }

  void newValue(String text) {
    setState(() {
      value = text;
    });
  }

  //for check box
  bool value1, value2 = false, value3 = false;

  void onChangeValue1(bool value) {
    setState(() {
      value1 = value;
    });
  }

  void onChangeValue2(bool value) {
    setState(() {
      value2 = value;
    });
  }

  void onChangeValue3(bool value) {
    setState(() {
      value3 = value;
    });
  }

  //for switch
  bool switchValue1 = true, switchValue2 = false;

  void onSwitchChange1(bool value) {
    setState(() {
      switchValue1 = value;
    });
  }

  void onSwitchChange2(bool value) {
    setState(() {
      switchValue2 = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("App bar"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            //text field
            Text(
              "Text field",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text("User input"),
            TextField(
              cursorColor: Colors.green,
              autocorrect: true,
              autofocus: false,
              maxLines: 1,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                hintText: "Hint",
                icon: Icon(Icons.home),
                prefixIcon: Icon(Icons.assignment),
                suffixIcon: Icon(Icons.accessibility_new),
                labelText: "Label",
              ),
              onChanged: newValue,
              //real time
              onSubmitted: (value) =>
                  displayInputValue(value), //need a button to be called
            ),
            Text("On Value change: $value"),
            Text("Sbumitted value: $input"),

            //checkBox
            Text(
              "CheckBox",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Checkbox(
              value: value1,
              onChanged: onChangeValue1,
              activeColor: Colors.blue,
              checkColor: Colors.black,
              tristate: true,
            ),
            Checkbox(
              value: value2,
              onChanged: onChangeValue2,
              activeColor: Colors.blue,
              checkColor: Colors.white,
              tristate: false,
            ),
            CheckboxListTile(
              value: value3,
              onChanged: onChangeValue3,
              title: Text("Text check box"),
              subtitle: Text("Sub title"),
              activeColor: Colors.purple,
              secondary:
                  Icon(Icons.input, color: Colors.blue), //icon before text
            ),

            //switch
            Text(
              "Switch",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Switch(
              value: switchValue1,
              onChanged: onSwitchChange1,
            ),
            SwitchListTile(
              value: switchValue2,
              onChanged: onSwitchChange2,
              title: Text("Title"),
              subtitle: Text("Sub title"),
              secondary: Icon(Icons.access_alarm, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
