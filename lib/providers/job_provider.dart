import 'dart:convert';

import 'package:bwa_job/models/job_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class JobProvider with ChangeNotifier {
  Future<List<JobModel>> getJob() async {
    try {
      var response =
          await http.get(Uri.parse('https://bwa-jobs.herokuapp.com/jobs'));

      print(response.body);
      print(response.statusCode);

      if (response.statusCode == 200) {
        List<JobModel> jobs = [];
        var parsedJson = jsonDecode(response.body);

        parsedJson.forEach((job) => jobs.add(JobModel.fromJson(job)));

        return jobs;
      } else {
        return [];
      }
    } catch (e) {
      print(e);
      return [];
    }
    ;
  }
}
