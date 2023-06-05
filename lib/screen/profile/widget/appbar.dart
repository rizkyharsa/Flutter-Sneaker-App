import 'package:flutter/material.dart';

AppBar BuildAppBar(BuildContext context){
  final icon = Icons.dark_mode;

  return AppBar(
    leading: BackButton(),
    backgroundColor: Colors.transparent,
    elevation: 0,
    actions: [
      IconButton(
        icon: Icon(icon),
        onPressed: (){},
      )
    ],
  );
}
