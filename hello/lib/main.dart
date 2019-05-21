import "package:flutter/material.dart";
//Notes :
// I didn't like the whole class structure in first impression

// main()
// {
//   runApp(HelloApp());
// }

void main() => runApp(HelloApp());

class HelloApp extends StatelessWidget {
  @override
  Widget build(context) {
    //Core route widget
    //() means const to create new instance
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("What a long nested shit :/"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: RaisedButton(
              onPressed: () {},
              child: Text("Add Photo"),
            ),
          ),
          Card(
            child: Column(
              children: <Widget>[
                Image.asset("assets/mydaughter.jpg"),
                Text("Meet Ada 4 the name of Ada Lovelace")
              ],
            ),
          )
        ],
      ),
    ));
  }
}
