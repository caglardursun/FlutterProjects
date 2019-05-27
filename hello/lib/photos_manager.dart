import 'package:flutter/material.dart';
import './photos.dart';
import './photos_control.dart';

class PhotosManager extends StatefulWidget 
{

  final Map<String,String> startingPhoto;
  //this keyword is different from other languages
  //this means assign automatically
  //{this.startingPhoto} calling (startingPhoto: "dasdasdsadas") from the other side
  PhotosManager({this.startingPhoto});

 
  @override
  State<StatefulWidget> createState() 
  {
    print("Photos manager createState");
    return _PhotosManagerState();
  }
}

class _PhotosManagerState extends State<PhotosManager> 
{
  
  List<Map<String,String>> _photos = [];

  @override
  void initState() {
    
    print("_PhotosManagerState initState()");
    if(widget.startingPhoto != null){
      _photos.add(widget.startingPhoto);
    }

    //_photos.add(widget.startingPhoto);
    //goes 2 base like other langu
    super.initState();
  }

  @override
  void didUpdateWidget(PhotosManager oldWidget) {
    print("_PhotosManagerState didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  void _addPhoto(Map<String,String> photo)
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
