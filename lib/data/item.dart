import 'package:flutter/material.dart';

class Item {
  final int id;
  final String name;
  final String price;
  final String imageUrl;
  final Color bgColor;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    this.bgColor = const Color.fromARGB(255, 208, 208, 212),
  });
}

final List<Item> listItem = [
  Item(
    id: 1,
    name: 'Nike Air Force 1',
    price: '92',
    imageUrl: 'assets/images/nike1.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
  Item(
    id: 2,
    name: 'Air Jordan 1 Retro High OG',
    price: '178',
    imageUrl: 'assets/images/nike2.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
  Item(
    id: 3,
    name: 'Nike Air Force 1 Mid',
    price: '130',
    imageUrl: 'assets/images/nike3.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
  Item(
    id: 4,
    name: 'Nike Air Max 97 Premium',
    price: '137',
    imageUrl: 'assets/images/nike4.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
  Item(
    id: 5,
    name: 'Air Jordan 13 Retro',
    price: '207',
    imageUrl: 'assets/images/nike5.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
  Item(
    id: 6,
    name: 'Nike SB Dunk High Pro PRM',
    price: '115',
    imageUrl: 'assets/images/nike6.png',
    bgColor: const Color.fromARGB(255, 208, 208, 212),
  ),
];
