import 'package:flutter/material.dart';
import 'package:my_shop/constant.dart';
import 'package:my_shop/screen/list/shoe_detail.dart';

import '../../data/item.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
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
            color: Color(0xFF545D68),
          ),
          onPressed: () {},
        ),
        title: const Text(
          'List',
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
              color: Color(0xFF545D68),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            // childAspectRatio: 0.7,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(defaultBorderRadius),
                ),
              ),
              child: Column(
                children: [
                   
                ],
              ),
            );
          },
          itemCount: listItem.length,
        ),
      ),
    );
  }

  // Widget _itemCard(
  //   Item item,
  //   context,
  // ) {
  //   return Padding(
  //     padding: const EdgeInsets.all(4),
  //     child: InkWell(
  //       onTap: () {
  //         Navigator.of(context).push(MaterialPageRoute(builder: (context) {
  //           return ShoeDetail(
  //             imgAsset: item.imageUrl,
  //             shoePrice: item.price,
  //             shoeName: item.name,
  //           );
  //         }));
  //       },
  //       child: Container(
  //         decoration: BoxDecoration(
  //           borderRadius: BorderRadius.circular(16),
  //           boxShadow: [
  //             BoxShadow(
  //               color: Colors.grey.withOpacity(0.2),
  //               spreadRadius: 3,
  //               blurRadius: 5,
  //             )
  //           ],
  //           color: Colors.white,
  //         ),
  //         child: ListView(
  //           physics: const NeverScrollableScrollPhysics(),
  //           children: [
  //             const Padding(
  //               padding: EdgeInsets.only(
  //                 right: 8,
  //                 top: 8,
  //               ),
  //               //favorite widget
  //             ),
  //             Container(
  //               height: 92,
  //               width: 92,
  //               decoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(16),
  //                 image: DecorationImage(
  //                   image: AssetImage(item.imageUrl),
  //                   fit: BoxFit.contain,
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(height: 8),
  //             Center(
  //               child: Text(
  //                 item.price,
  //                 style: const TextStyle(
  //                   fontFamily: 'Varela',
  //                   fontSize: 16,
  //                   color: Colors.black54,
  //                 ),
  //               ),
  //             ),
  //             Center(
  //               child: Text(
  //                 item.name,
  //                 overflow: TextOverflow.ellipsis,
  //                 style: const TextStyle(
  //                   fontFamily: 'Varela',
  //                   fontSize: 14,
  //                   color: Colors.black54,
  //                 ),
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.all(8),
  //               child: Container(
  //                 color: const Color(0xFFEBEBEB),
  //                 height: 1,
  //               ),
  //             ),
  //             Padding(
  //               padding: const EdgeInsets.symmetric(horizontal: 4),
  //               child: Row(
  //                 mainAxisAlignment: MainAxisAlignment.center,
  //                 children: [
  //                   Row(
  //                     children: const [
  //                       Icon(
  //                         Icons.chat,
  //                         color: Colors.black54,
  //                         size: 16,
  //                       ),
  //                       SizedBox(width: 5,),
  //                       Text(
  //                         'Chat',
  //                         style: TextStyle(
  //                           fontFamily: 'Varela',
  //                           color: Colors.black54,
  //                           fontSize: 12,
  //                         ),
  //                       )
  //                     ],
  //                   ),
  //                   const SizedBox(width: 16,),
  //                   Row(
  //                     children: const [
  //                       Icon(
  //                         Icons.remove_circle_outline,
  //                         color: Colors.black54,
  //                         size: 16,
  //                       ),
  //                       SizedBox(width: 8,),
  //                       Text(
  //                         '3',
  //                         style: TextStyle(
  //                           fontFamily: 'Varela',
  //                           fontSize: 12,
  //                           fontWeight: FontWeight.bold,
  //                           color: Colors.black54
  //                         ),
  //                       ),
  //                       SizedBox(
  //                         width: 8,
  //                       ),
  //                       Icon(
  //                         Icons.add_circle_outline,
  //                         color: Colors.black54,
  //                         size: 16,
  //                       ),
  //                     ],
  //                   )
  //                 ],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
