import 'package:flutter/material.dart';

class SecTitle extends StatelessWidget {
  const SecTitle({
    Key? key,
    required this.title,
    required this.seeAll,
  }) : super(key: key);
  final String title;
  final VoidCallback seeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
        ),
        TextButton(
          onPressed: seeAll,
          child: const Text(
            'See All',
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}
