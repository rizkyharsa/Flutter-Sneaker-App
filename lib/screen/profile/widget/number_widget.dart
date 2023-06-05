import 'package:flutter/material.dart';

class NumberWidget extends StatelessWidget {
  const NumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          buildValue(context, '4.8', 'Rating'),
          buildDivider(),
          buildValue(context, '60', 'Following'),
          buildDivider(),
          buildValue(context, '100', 'Followers'),
        ],
      ),
    );
  }

  Widget buildDivider(){
    return VerticalDivider();
  }
  Widget buildValue(BuildContext context, String value, String text){
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 4),
      onPressed: (){},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            value,
            style: TextStyle(
              fontFamily: 'Varela',
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 2,),
          Text(
            text,
            style: TextStyle(
              fontFamily: 'Varela',
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}