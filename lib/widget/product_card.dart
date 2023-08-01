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
    required this.isLoved,
  }) : super(key: key);
  final String name;
  final String price;
  final String imageUrl;
  final VoidCallback onTap;
  final Color bgColor;
  final bool isLoved;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        // height: 200,
        margin: const EdgeInsets.only(left: 4,right: 4),
        // padding: const EdgeInsets.all(defaultPadding / 2),
        decoration: BoxDecoration(
          color: white,
          borderRadius: const BorderRadius.all(Radius.circular(defaultBorderRadius)),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 2),
              blurRadius: 8,
              color: Colors.black.withOpacity(.2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Positioned(
                  left: 10,
                  top: 10,
                  child: isLoved
                      ? const Icon(Icons.favorite, color: Colors.red, size: 20)
                      : const Icon(Icons.favorite_border_rounded, size: 20),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    // color: black,
                    borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 130,
                  ),
                ),
              ],
            ),
            const SizedBox(height: defaultPadding / 2),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Text(
                name,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.black54),
              ),
            ),
            const SizedBox(height: defaultPadding / 4),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
                    child: Text(
                      "\$ $price",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: black,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(defaultBorderRadius),
                      topLeft: Radius.circular(defaultBorderRadius),
                    ),
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: white,
                  ),
                ),
              ],
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
