import 'package:flutter/material.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/data/item.dart';
import 'package:my_shop/widget/product_card.dart';
import 'title.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: SecTitle(
            title: 'New Arrival',
            seeAll: () {},
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              listItem.length,
              (index) => Padding(
                padding: const EdgeInsets.only(right: defaultPadding),
                child: ProductCard(
                  name: listItem[index].name,
                  imageUrl: listItem[index].imageUrl,
                  price: listItem[index].price,
                  bgColor: listItem[index].bgColor,
                  onTap: () {},
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
