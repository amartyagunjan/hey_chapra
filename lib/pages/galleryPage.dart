import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GalleryPage extends StatelessWidget {
  final String str;

  GalleryPage(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StaggeredGridView.extentBuilder(
        maxCrossAxisExtent: 2,
        scrollDirection: Axis.vertical,
        //physics: Scrollph,
        itemBuilder: (BuildContext context, int index) => new Container(
            color: Colors.green,
            child: new Center(
              child: new CircleAvatar(
                backgroundColor: Colors.white,
                child: new Text('$index'),
              ),
            )),
        staggeredTileBuilder: (int index) =>
            new StaggeredTile.count(2, index.isEven ? 2 : 1),
      ),
    );
  }
}
