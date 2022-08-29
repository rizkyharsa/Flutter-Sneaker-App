import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:my_shop/screen/home_screen.dart';
import 'package:my_shop/screen/list_screen.dart';
import 'package:my_shop/screen/profile_screen.dart';
import 'package:my_shop/screen/search_screen.dart';

class NavBottom extends StatefulWidget {
  const NavBottom({Key? key}) : super(key: key);

  @override
  State<NavBottom> createState() => _NavBottomState();
}

class _NavBottomState extends State<NavBottom> {
  int currentTab = 0;
  final _listPage = [
    const HomePage(),
    const SearchPage(),
    const ListPage(),
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
      bottomNavigationBar: ConvexAppBar(
        style: TabStyle.react,
        items: const [
          TabItem(icon: Icons.home, title: 'Home'),
          TabItem(icon: Icons.search, title: 'Search'),
          TabItem(icon: Icons.list, title: 'Items'),
          TabItem(icon: Icons.person, title: 'Profile'),
        ],
        color: Colors.white,
        initialActiveIndex: currentTab,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
