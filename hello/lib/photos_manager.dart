import "package:flutter/material.dart";
import './photos.dart';

class PhotosManager extends StatefulWidget 
{

  String startingPhoto;
  //this keyword is different from other languages
  //this means assign automatically
  PhotosManager(this.startingPhoto){
    print("Photos manager called");
  }

  @override
  State<StatefulWidget> createState() {
    print("Photos manager createState");
    return _PhotosManagerState();
  }
}

class _PhotosManagerState extends State<PhotosManager> {
  List<String> _photos = [];

  @override
  void initState() {
    print("_PhotosManagerState initState");
    _photos.add(widget.startingPhoto);
    //goes 2 base like other langu
    super.initState();
  }

  @override
  void didUpdateWidget(PhotosManager oldWidget) {
    print("_PhotosManagerState didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print("_PhotosManagerState build");
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.5),
        child: RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            setState(() {
              _photos.add("Test");
            });
          },
          child: Text("Add Photo"),
        ),
      ),
      Photos(_photos)
    ]);
  }
}
