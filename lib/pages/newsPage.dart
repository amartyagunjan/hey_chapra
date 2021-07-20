import 'package:flutter/material.dart';
import 'package:hey_chapra/widgets/newsCard.dart';
import '../widgets/newsCard.dart';

class NewsPage extends StatelessWidget {
  final String str;

  NewsPage(this.str);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        NewsCard(),
        NewsCard(),
        NewsCard(),
        NewsCard(),
      ],
    );
  }
}
