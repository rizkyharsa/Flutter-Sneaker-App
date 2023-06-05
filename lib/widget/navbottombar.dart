import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/screen/home/home_screen.dart';
import 'package:my_shop/screen/list/list_screen.dart';
import 'package:my_shop/screen/profile/profile_screen.dart';
import 'package:my_shop/screen/search_screen.dart';
//import 'package:my_shop/screen/search_screen.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int currentTab = 0;
  final _listPage = [
    const HomePage(),
    const ListPage(),
    const SearchPage(),
    const ProfilePage()
  ];

  _changeSelectedNavBar(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listPage[currentTab],
      bottomNavigationBar: GNav(
        gap: 10,
        iconSize: 20,
        curve: Curves.easeInOutExpo,
        color: Colors.grey.shade400,
        activeColor: black,
        // tabBackgroundColor: primaryColor,
        tabMargin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(10),
        tabs: [
          GButton(icon: Icons.home, text: 'Home',),
          GButton(icon: CupertinoIcons.heart_fill, text: 'Items'),
          GButton(icon: Icons.shopping_cart_rounded, text: 'Cart',),
          GButton(icon: Icons.person, text: 'Profile',),
        ],
        onTabChange: _changeSelectedNavBar,
      ),
      // ConvexAppBar(
      //   style: TabStyle.react,
      //   items: const [
      //     TabItem(icon: Icons.home, title: 'Home'),
      //     //TabItem(icon: Icons.search, title: 'Search'),
      //     TabItem(icon: Icons.list, title: 'Items'),
      //     TabItem(icon: Icons.person, title: 'Profile'),
      //   ],
      //   color: Colors.white,
      //   initialActiveIndex: currentTab,
      //   onTap: _changeSelectedNavBar,
      // ),
    );
  }
}
