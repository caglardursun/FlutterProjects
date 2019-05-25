import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  //final means
  //The value of _photos never changes
  //wierd
  final List<String> _photos;

  Photos(this._photos);

  Widget _buildPhotosItem(BuildContext context,int index){

    return Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/mydaughter.jpg"),
                      Text(_photos[index])
                    ],
                  ),
        );
  }

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemBuilder: _buildPhotosItem,
        itemCount: _photos.length,
    );
  }
}
