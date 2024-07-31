import 'package:flutter/material.dart';

class RecomendedNewsItem extends StatelessWidget {
  const RecomendedNewsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: const BoxDecoration(),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://images.skynewsarabia.com/images/v1/2024/07/31/1732604/1000/563/1-1732604.JPG',
              width: 200,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sports',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'This is a good news for you you must see',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'BBC • 8 minutes ago',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
