import 'package:flutter/material.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/data/item.dart';
import 'package:my_shop/screen/list/shoe_detail.dart';
import 'package:my_shop/widget/product_card.dart';
import 'package:my_shop/screen/home/components/title.dart';

class PopularProduct extends StatelessWidget {
  const PopularProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(defaultPadding, 8, defaultPadding, 8),
          child: SecTitle(
            title: 'Popular',
            seeAll: () {},
          ),
        ),
        Container(
          margin: const EdgeInsets.fromLTRB(defaultPadding, 0, defaultPadding, 8),
          height: 80,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            image: DecorationImage(
              image: AssetImage("assets/images/nikeBanner.jpg"),fit: BoxFit.cover,
            )
          ),
        ),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          scrollDirection: Axis.horizontal,
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 8, defaultPadding, 8),
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



    // return Scaffold(
    //   body: Container(
    //     padding: const EdgeInsets.all(10),
    //     child: GridView.builder(
    //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //         crossAxisCount: 2,
    //         crossAxisSpacing: 8,
    //         mainAxisSpacing: 8,
    //         childAspectRatio: 0.7,
    //       ),
    //       itemBuilder: (context, index) {
    //         return ProductCard(
    //           name: listItem[index].name,
    //           price: listItem[index].price,
    //           imageUrl: listItem[index].imageUrl,
    //           bgColor: listItem[index].bgColor,
    //           press: () {},
    //         );
    //       },
    //       itemCount: listItem.length,
    //     ),
    //   ),
    // );