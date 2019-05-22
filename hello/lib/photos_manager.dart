import "package:flutter/material.dart";
import './photos.dart';

class PhotosManager extends StatefulWidget 
{
  @override
  State<StatefulWidget> createState() 
  {    
    return _PhotosManagerState();
  }  
}

class _PhotosManagerState extends State<PhotosManager> 
{

  List<String> _photos = ["my daughter"];

  @override
  Widget build(BuildContext context){
    return Column(children:  [Container(
            margin: EdgeInsets.all(10.5),
            child: RaisedButton(
              onPressed: () {
                setState(() {
                   _photos.add("Test");                
                });               
              },
              child: Text("Add Photo"),
            ),
          ),
          Photos(_photos)
          ]
          
          );
  }
  
  
}