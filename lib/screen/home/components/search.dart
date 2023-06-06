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
    return Form(
      child: TextFormField(
        onSaved: (value) {},
        decoration: InputDecoration(
          
          focusColor: black,
          filled: true,
          fillColor: Colors.white,
          hintText: 'Search items...',
          border: outlineInputBorder,
          focusedBorder: outlineInputBorder,
          errorBorder: outlineInputBorder,
          prefixIcon: const Padding(
            padding: EdgeInsets.all(14),
            child: Icon(Icons.search)
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding / 2),
            child: SizedBox(
              width: 54,
              height: 54,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onPressed: () {},
                child: const Icon(Icons.filter_list)
              ),
            ),
          ),
        ),
      ),
    );
  }
}
