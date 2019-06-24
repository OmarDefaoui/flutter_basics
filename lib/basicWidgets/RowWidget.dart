import 'package:flutter/material.dart';

class RowWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text('Deliver features faster',
                      textAlign: TextAlign.center),
                ),
                Expanded(
                  child: Text(
                    'Craft beautiful UIs',
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  child: FittedBox(
                    //the image will fit the container
                    fit: BoxFit.contain, // otherwise the logo will be tiny
                    child: const FlutterLogo(),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 18,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('We move under cover and we move as one'),
                Text('Through the night, we have one shot to live another day'),
                Text('We cannot let a stray gunshot give us away'),
                Text('We will fight up close, seize the moment and stay in it'),
                Text('It’s either that or meet the business end of a bayonet'),
                Text('The code word is ‘Rochambeau,’ dig me?'),
                Text('Rochambeau!',
                    style: DefaultTextStyle.of(context)
                        .style
                        .apply(fontSizeFactor: 2.0)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
