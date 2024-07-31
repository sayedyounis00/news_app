import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/presentaion/widgtes/carousel_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomIcon(icon: Icons.menu,),
                  Row(
                    children: [
                      CustomIcon(icon: Icons.search,),
                      SizedBox(width: 16.0,),
                      CustomIcon(icon: Icons.notifications,),
                    ],
                  ),
                ],
              ),SizedBox(
                height: 15,
              ),
                CarouselWithIndicatorState(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key, required this.icon,
  });
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[400],
      ),
      child:  Icon(icon),
    );
  }
}
