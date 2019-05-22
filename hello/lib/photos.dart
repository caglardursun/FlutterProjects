import 'package:flutter/material.dart';

class Photos extends StatelessWidget {
  //final means
  //The value of _photos never changes
  //wierd
  final List<String> _photos;

  Photos(this._photos);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _photos
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      //Image.asset("assets/mydaughter.jpg"),
                      Text(element)
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
