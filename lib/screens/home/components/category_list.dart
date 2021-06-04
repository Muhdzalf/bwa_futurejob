import 'package:flutter/material.dart';

import 'category_card.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoryCard(
            title: 'Website Developer',
            image: 'assets/images/background/website.png',
          ),
          CategoryCard(
            title: 'Mobile Developer',
            image: 'assets/images/background/mobile.png',
          ),
          CategoryCard(
            title: 'Product Designer',
            image: 'assets/images/background/designer.png',
          ),
          CategoryCard(
            title: 'Video\nEditor',
            image: 'assets/images/background/video.png',
          ),
          CategoryCard(
            title: 'Content Writer',
            image: 'assets/images/background/writer.png',
          ),
        ],
      ),
    );
  }
}
