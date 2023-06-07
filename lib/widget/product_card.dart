import 'package:flutter/material.dart';

import 'package:my_shop/constant.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.onTap,
    required this.bgColor,
  }) : super(key: key);
  final String name;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;
  final Color bgColor;
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 154,
        height: 210,
        margin: const EdgeInsets.only(left: defaultPadding),
        // padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadius)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 8,
              color: Colors.black.withOpacity(.2)
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.circular(defaultBorderRadius)),
              ),
              child: Image.asset(
                imageUrl,
                height: 132,
              ),
            ),
            const SizedBox(
              height: defaultPadding / 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                "\$ $price",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
            const SizedBox(
              height: defaultPadding / 4,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                name,
                style: const TextStyle(color: Colors.black54),
              ),
            ),
            // Row(
            //   children: [
            //     Expanded(
            //       child: Text(
            //         "\$ $price",
            //         style: Theme.of(context).textTheme.titleSmall,
            //       ),
            //     ),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
