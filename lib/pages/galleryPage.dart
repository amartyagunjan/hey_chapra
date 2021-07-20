import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final String str;

  GalleryPage(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(str),
      ),
    );
  }
}
