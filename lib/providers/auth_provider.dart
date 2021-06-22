import 'dart:convert';

import 'package:bwa_job/models/user_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class AuthProvider with ChangeNotifier {
  Future<UserModel> register(
      String email, String password, String name, String goal) async {
    try {
      var body = {
        'email': email,
        'password': password,
        'name': name,
        'goal': goal,
      };

      var response = await http.post(
          Uri.parse('https://bwa-jobs.herokuapp.com/register'),
          body: body);

      print(response.statusCode);
      print(response.body);

      if (response.statusCode == 200) {
        UserModel.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
