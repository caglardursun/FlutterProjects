import 'package:flutter/material.dart';

class PhotoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Photo Details :)"),
        ),
        body: Column(          
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("assets/mydaughter.jpg"),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text("Details"),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: RaisedButton(
                color: Theme.of(context).accentColor,
                child: Text("Back"),
                onPressed: () => Navigator.pop(context),
              ),
            )
          ],
        ));
  }
}