import "package:flutter/material.dart";

main() {

  runApp(HelloApp());

}

class HelloApp extends StatelessWidget {

  build(context) {
    //Core route widget
    //() means const to create new instance
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ne uzun yapı aq."),
        ),
      ),
    );
  }
}
