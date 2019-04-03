import 'package:flutter/material.dart';

class ScaffoldBottomNavigationBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,

      //app bar
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("App bar title"),
      ),

      //bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.adjust),
            title: Text("Tab1"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.android),
            title: Text("Tab2"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment_ind),
            title: Text("Tab3"),
          ),
        ],
        onTap: (int i) => debugPrint("Index is $i"),
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.blue, //the color of selected menu
      ),

      //floatingActionButton
      floatingActionButton: FloatingActionButton(
        onPressed: () => debugPrint("Fab clicked"),
        child: Icon(
          Icons.build,
          color: Colors.white,
        ),
        backgroundColor: Colors.deepOrangeAccent,
        tooltip: "Explication", //text displayed on long click
      ),
    );
  }
}
