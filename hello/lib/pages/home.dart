import "package:flutter/material.dart";
import '../photos_manager.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What a long nested shit :/"),
      ),
      body: PhotosManager(),
    );
  }
}
