import 'package:bwa_job/models/category_model.dart';
import 'package:bwa_job/providers/category_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'category_card.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({
    Key key,
  }) : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    var categoryProvider = Provider.of<CategoryProvider>(context);
    return SizedBox(
      height: 200,
      child: FutureBuilder<List<CategoryModel>>(
          future: categoryProvider.getCategory(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: snapshot.data
                    .map((category) => CategoryCard(
                          category: category,
                        ))
                    .toList(),
              );
            }
            return Center(
              child: CircularProgressIndicator(),
            );
          }),
    );
  }
}
