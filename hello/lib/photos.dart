import 'package:flutter/material.dart';
import 'pages/photo.dart';

class Photos extends StatelessWidget {
  //final means
  //The value of _photos never changes
  //wierd
  final List<Map<String, String>> _photos;

  Photos([this._photos = const []]) {
    print("Photos widget const");
  }

  Widget _buildPhotosItem(BuildContext context, int index) {
    String imageUrl = _photos[index]['image'];
    String title = _photos[index]['title'];
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(imageUrl),
          Text(title),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  child: Text('Details'),
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) =>
                              PhotoPage(title, imageUrl)))),
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
