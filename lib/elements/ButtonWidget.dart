import 'package:flutter/material.dart';

//when user click on button, we update the name in the text widget
class ButtonWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<ButtonWidget> {
  String name = "Empty";

  void onClickButton() {
    setState(() {
      name = "First text";
    });
  }

  void onClickButton2(String text) {
    setState(() {
      name = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App bar title"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.red,
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Text(
              "$name",
              textDirection: TextDirection.ltr,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),

            //button that contains text and icon
            RaisedButton.icon(
              onPressed: onClickButton,
              icon: Icon(Icons.assignment_ind),
              label: Text("This is btn"),
              color: Colors.lightBlue,
              elevation: 8,
            ),

            //Normal button
            RaisedButton(
              onPressed: () => onClickButton2("The custom text"),
              child: Text("This is the second button"),
              color: Colors.green,
              textColor: Colors.white,
              elevation: 2,
            ),

            //button without background, only the child shown
            FlatButton(
              onPressed: onClickButton,
              child: Text("Flat button"),
              //child: Icon(Icons.assignment_ind),
            ),

            //icon button
            IconButton(
              icon: Icon(Icons.assignment_ind),
              onPressed: () => debugPrint("Icon button pressed"),
            ),
          ],
        ),
      ),
    );
  }
}
