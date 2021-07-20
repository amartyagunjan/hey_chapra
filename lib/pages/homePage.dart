//Packages Import
import 'package:flutter/material.dart';

//Pages import
import './newsPage.dart';
import './socialContributionPage.dart';
import './aboutUsPage.dart';
import './galleryPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    NewsPage("News"),
    SocialContributionPage("Social Contribution"),
    GalleryPage("Gallery"),
    AboutUsPage("About US")
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hey Chapra"),
        centerTitle: true,
      ),
      //drawer: Drawer() ,
      endDrawer: Drawer(),
      drawerEdgeDragWidth: 10,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff272727) /*Colors.grey[750]*/,
        //fixedColor: Colors.white ,
        selectedItemColor: Colors.blue.shade800,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        iconSize: 30,
        //elevation: 5,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color: Colors.blue[900],
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mail,
              //color: Colors.blue[900],
            ),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                //color: Colors.blue[900],
              ),
              label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.alarm,
              //color: Colors.blue[900],
            ),
            label: 'Profile',
          )
        ],
      ),
    );
  }
}
