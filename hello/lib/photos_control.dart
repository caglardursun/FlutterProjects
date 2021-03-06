import 'package:flutter/material.dart';


class PhotosControl extends StatelessWidget {

  //That's new ...
  final Function addPhotos;
  PhotosControl(this.addPhotos);

  @override
  Widget build(BuildContext context) {

    return RaisedButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            addPhotos( 
              {'title':'Çikilop', 'image':'assets/mydaughter.jpg'}
            );
          },
          child: Text("Add Photo",textAlign: TextAlign.center),
        );
  }
}
