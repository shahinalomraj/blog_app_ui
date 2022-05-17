import 'package:blog_app_ui/HomeScreen.dart';
import 'package:blog_app_ui/constant.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BottomNabBar extends StatefulWidget {
  int currentIndex = 0;

  BottomNabBar(this.currentIndex, {Key? key}) : super(key: key);

  @override
  State<BottomNabBar> createState() => _BottomNabBarState();
}

class _BottomNabBarState extends State<BottomNabBar> {
  final List _children = [
     HomeScreen(),
    Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          ImageIcon(
            AssetImage("assets/icons/Category.png"),
            size: 18.0,
            color: kLightColor,
          ),
          SizedBox(height: 18.0),
          Text(
            "Category",
            style: TextStyle(
                fontSize: 20.0,
                color: kLightColor,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.red,
    ),
  ];

  get onTabTapped => null;

  void onTapTapped(int index) {
    setState(() {
      widget.currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomeBGColor,
      body: _children[widget.currentIndex],
      bottomNavigationBar: Container(
        height: 64.0,
        margin: const EdgeInsets.all(24.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: BottomNavigationBar(
            elevation: 0.0,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            backgroundColor: kBottomNavBarColor.withOpacity(0.08),
            selectedItemColor: kLightColor,
            unselectedItemColor: kLightColor.withOpacity(0.4),
            onTap: onTabTapped,
            currentIndex: widget.currentIndex,
            items: [
              buildBottomNavigationBarItem(0, "assets/icons/Home.png", "Home"),
              buildBottomNavigationBarItem(
                  1, "assets/icons/Category.png", "Category"),
              buildBottomNavigationBarItem(
                  2, "assets/icons/Search.png", "Search"),
              buildBottomNavigationBarItem(
                  3, "assets/icons/Profile.png", "Profile"),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      int index, String icon, String title) {
    return BottomNavigationBarItem(
        icon: ImageIcon(
          AssetImage(icon),
          size: 20.0,
        ),
        label: "title");
  }
}
