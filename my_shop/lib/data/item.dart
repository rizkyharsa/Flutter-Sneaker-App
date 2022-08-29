class Item {
  final int id;
  final String name;
  final String price;
  final String imageUrl;

  Item({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

final List<Item> listItem = [
  Item(
    id: 1,
    name: 'Nike Air Force 1',
    price: '1,379,000',
    imageUrl: 'assets/nike1.png',
  ),
  Item(
    id: 2,
    name: 'Air Jordan 1 Retro High OG',
    price: '2,669,000',
    imageUrl: 'assets/nike2.png',
  ),
  Item(
    id: 3,
    name: 'Nike Air Force 1 Mid',
    price: '2,059,000',
    imageUrl: 'assets/nike3.png',
  ),
  Item(
    id: 4,
    name: 'Nike Air Max 97 Premium',
    price: '2,989,000',
    imageUrl: 'assets/nike4.png',
  ),
  Item(
    id: 5,
    name: 'Air Jordan 13 Retro',
    price: '3,099,000',
    imageUrl: 'assets/nike5.png',
  ),
  Item(
    id: 6,
    name: 'Nike SB Dunk High Pro PRM',
    price: '1,729,000',
    imageUrl: 'assets/nike6.png',
  ),
];
