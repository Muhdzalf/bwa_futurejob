import 'package:bwa_job/models/category_model.dart';
import 'package:bwa_job/screens/home/categories/categories._screen.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  const CategoryCard({
    Key key,
    this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoriesScreen(
                          category: category,
                        )));
          },
          child: Container(
            width: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(category.imageUrl), fit: BoxFit.cover)),
            child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.transparent,
                primaryColor.withOpacity(0.7)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    category.name,
                    style: body.copyWith(color: white, fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
