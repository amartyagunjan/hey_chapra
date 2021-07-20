import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  final String str;

  AboutUsPage(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(str),
      ),
    );
  }
}
