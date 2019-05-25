import 'package:flutter/material.dart';
import './photos.dart';
import './photos_control.dart';

class PhotosManager extends StatefulWidget 
{

  final String startingPhoto;
  //this keyword is different from other languages
  //this means assign automatically
  //{this.startingPhoto} calling (startingPhoto: "dasdasdsadas") from the other side
  PhotosManager({this.startingPhoto = "Default Photo"}){
    print("Photos manager called");
  }

  @override
  State<StatefulWidget> createState() {
    print("Photos manager createState");
    return _PhotosManagerState();
  }
}

class _PhotosManagerState extends State<PhotosManager> 
{
  
  final List<String> _photos = [];

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

  void _addPhoto(String photo)
  {
    setState((){
      _photos.add(photo);
    });
    print(photo);
  }

  @override
  Widget build(BuildContext context) {
    print("_PhotosManagerState build");
    return Column(children: [
      Container(
        margin: EdgeInsets.all(10.5),
        child: PhotosControl(_addPhoto),
      ),
      Expanded(child: Photos(_photos))
    ]);
  }
}
