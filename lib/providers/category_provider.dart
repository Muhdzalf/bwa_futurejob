import 'dart:convert';

import 'package:bwa_job/models/category_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CategoryProvider with ChangeNotifier {
  Future<List<CategoryModel>> getCategory() async {
    try {
      // get tidak memerlukan body
      var response = await http
          .get(Uri.parse('https://bwa-jobs.herokuapp.com/categories'));

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        // List untuk menanpung data
        List<CategoryModel> categories = [];

        var parsedJson = jsonDecode(response.body);

        // data yang telah didapat dimasukkan kesalam list categories
        parsedJson.forEach((category) {
          categories.add(CategoryModel.fromJson(category));
        });

        return categories;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
  }
}
