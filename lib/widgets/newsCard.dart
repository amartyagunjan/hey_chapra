import 'package:flutter/material.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15,left: 10, right: 10),
      child: ListTile(
        tileColor: Colors.black38,

      ),
      width: MediaQuery.of(context).size.width *0.9,
      height: MediaQuery.of(context).size.width *0.7,
      
    );
  }
}