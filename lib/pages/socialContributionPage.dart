import 'package:flutter/material.dart';

class SocialContributionPage extends StatelessWidget {
  final String str;

  SocialContributionPage(this.str);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Color(0xff121212)),
      child: Center(
        child: Text(str),
      ),
    );
  }
}
