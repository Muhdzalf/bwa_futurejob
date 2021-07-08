import 'package:bwa_job/models/job_model.dart';
import 'package:bwa_job/providers/job_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'companyjob_card.dart';

class JobList extends StatelessWidget {
  const JobList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
    return FutureBuilder<List<JobModel>>(
        future: jobProvider.getJob(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            return Column(
                children: snapshot.data
                    .map((job) => CompanyJobCard(
                          job: job,
                        ))
                    .toList());
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
