import 'package:flutter/material.dart';
import 'package:news_app/presentaion/widgtes/carousel_slider.dart';
import 'package:news_app/presentaion/widgtes/custom_icon.dart';
import 'package:news_app/presentaion/widgtes/main_line.dart';
import 'package:news_app/presentaion/widgtes/news_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(
                    icon: Icons.menu,
                  ),
                  Row(
                    children: [
                      CustomIcon(
                        icon: Icons.search,
                      ),
                      SizedBox(
                        width: 16.0,
                      ),
                      CustomIcon(
                        icon: Icons.notifications,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const MainLine(
                title: 'Breaking News',
              ),
              const CarouselWithIndicatorState(),
              const MainLine(
                title: 'Recomended news',
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const RecomendedNewsItem();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
