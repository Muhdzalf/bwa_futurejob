import 'package:bwa_job/models/job_model.dart';
import 'package:bwa_job/providers/job_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'companyjob_card.dart';

class BigCompanyJobList extends StatelessWidget {
  final String name;
  const BigCompanyJobList({
    Key key,
    this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var jobProvider = Provider.of<JobProvider>(context);
    return FutureBuilder<List<JobModel>>(
        future: jobProvider.getJobCategory(name),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            print(snapshot.data);
            return Column(
                children: snapshot.data
                    .map((job) => CompanyJobCard(
                          imageUrl: job.companyLogo,
                          companyName: job.companyName,
                          job: job.name,
                        ))
                    .toList());
          }
          return Center(child: CircularProgressIndicator());
        });
  }
}
