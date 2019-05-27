import "package:flutter/material.dart";
import 'pages/home.dart';

//Notes :
// I didn't like the whole class structure in first impression

main()
{
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;

  runApp(HelloApp());
}

//void main() => runApp(HelloApp());
 
class HelloApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    //Core route widget
    //() means const .to create new instance
    return MaterialApp(
      //debugShowMaterialGrid: true,
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.orange,
        accentColor: Colors.deepPurple
      ),
      home: HomePage()
    );
  }
}
