import 'package:flutter/material.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/data/item.dart';
import 'package:my_shop/screen/list/shoe_detail.dart';
import 'package:my_shop/widget/product_card.dart';
import 'title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 8),
          child: SecTitle(
            title: 'New Arrival',
            seeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.only(bottom: 8, top: 8),
            child: Row(
              children: List.generate(
                listItem.length,
                (index) => ProductCard(
                  name: listItem[index].name,
                  price: listItem[index].price,
                  imageUrl: listItem[index].imageUrl,
                  bgColor: listItem[index].bgColor,
                  isLoved: listItem[index].isLoved,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ShoeDetail(
                          imgAsset: listItem[index].imageUrl,
                          shoePrice: listItem[index].price,
                          shoeName: listItem[index].name,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
