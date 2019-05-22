import "package:flutter/material.dart";
import 'package:hello/photos_manager.dart';

//Notes :
// I didn't like the whole class structure in first impression

// main()
// {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    //Core route widget
    //() means const .to create new instance
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.deepPurple
      ),
        home: Scaffold(
      appBar: AppBar(
        title: Text("What a long nested shit :/"),
      ),
      body: PhotosManager("My doughter"),
    ));
  }
}
