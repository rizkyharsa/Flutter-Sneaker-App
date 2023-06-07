import 'package:flutter/material.dart';
//import 'package:flutter_svg/flutter_svg.dart';

import 'package:my_shop/constant.dart';

const OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12.0)),
  borderSide: BorderSide.none,
);

class SearchItem extends StatelessWidget {
  const SearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(defaultPadding, 4, defaultPadding, 8),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(defaultBorderRadius), boxShadow: [
        BoxShadow(
          offset: const Offset(0, 3),
          blurRadius: 8,
          color: Colors.black.withOpacity(.2),
        )
      ]),
      child: TextField(
        onChanged: (value) {},
        decoration: InputDecoration(
          focusColor: black,
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search items...',
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: Icon(Icons.search),
          suffixIcon: Container(
            margin: const EdgeInsets.only(right: 6),
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              color: black,
              borderRadius: BorderRadius.circular(defaultBorderRadius),
            ),
            child: const Icon(Icons.filter_list,size: 20,color: white,),
          ),
          // ElevatedButton(
          //   style: ElevatedButton.styleFrom(
          //     fixedSize: Size(60, 60),
          //     backgroundColor: black,
          //     shape: const RoundedRectangleBorder(
          //       borderRadius: BorderRadius.all(Radius.circular(defaultBorderRadius)),
          //     ),
          //   ),
          //   onPressed: () {},
          //   child: const Icon(Icons.filter_list,size: 20),
          // ),
        ),
      ),
    );
  }
}
