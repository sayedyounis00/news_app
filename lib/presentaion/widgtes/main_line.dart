
import 'package:flutter/material.dart';

class MainLine extends StatelessWidget {
  const MainLine({
    super.key, required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
        title,
           style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'View All',
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }
}
