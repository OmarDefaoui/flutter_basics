import 'package:flutter/material.dart';

class DropDownButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return home();
  }
}

class home extends State<DropDownButtonWidget> {
  var names = ["Omar", "Mohammed", "Khaled", "Issam"];
  var currentItemSelected = "Omar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //to don't resize the page when the keyboard appear
      appBar: AppBar(
        title: Text("DropDownButton"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              items: names.map((String dropDownStringItem) {
                var index = names.indexOf(dropDownStringItem);
                return DropdownMenuItem<String>(
                  child: Text("$index: " + dropDownStringItem),
                  value: dropDownStringItem,
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  currentItemSelected = newValue;
                });
              },
              value: currentItemSelected,
            ),
          ],
        ),
      ),
    );
  }
}
