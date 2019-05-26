import 'package:flutter/material.dart';
import 'pages/photo.dart';

class Photos extends StatelessWidget {
  //final means
  //The value of _photos never changes
  //wierd
  final List<String> _photos;

  Photos(this._photos);

  Widget _buildPhotosItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset("assets/mydaughter.jpg"),
          Text(_photos[index]),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (BuildContext context) => PhotoPage())
                      )
            ),
            ],
          )
        ],
      ),
    );
  }

  Widget _buildPhotoLists() {
    Widget photoCard;

    if (_photos.length > 0) {
      photoCard = ListView.builder(
        itemBuilder: _buildPhotosItem,
        itemCount: _photos.length,
      );
    } else {
      // photoCard = Center(
      //   child: Text("No Photos Found Add Some"),
      // );
      //Empty container will handle the error if we don't want any
      //exception
      photoCard = Container();
    }

    return photoCard;
  }

  @override
  Widget build(BuildContext context) {
    return _buildPhotoLists();
  }
}
