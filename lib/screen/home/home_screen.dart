import 'package:flutter/material.dart';

import 'package:my_shop/constant.dart';
import 'package:my_shop/screen/home/components/new_arrival.dart';
import 'package:my_shop/screen/home/components/popular_product.dart';
import 'package:my_shop/screen/home/components/search.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        title: const Text(
          'Sneaker Shop',
          style: TextStyle(
            fontFamily: 'Varela',
            fontSize: 18.0,
            color: Color(0xFF545D68),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          // padding: const EdgeInsets.all(defaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(defaultPadding, 8, defaultPadding, 0),
                child: Text(
                  "Explore",
                  style: Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(fontWeight: FontWeight.w500, color: Colors.black),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 8),
                child: Text(
                  "Best shoes for you",
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: defaultPadding/2),
                child: SearchItem(),
              ),
              const NewArrival(),
              const PopularProduct(),
            ],
          ),
        ),
      ),
    );
  }
}
