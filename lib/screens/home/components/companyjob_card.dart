import 'package:bwa_job/models/job_model.dart';
import 'package:bwa_job/screens/home/details/details_screen.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class CompanyJobCard extends StatelessWidget {
  final JobModel job;
  const CompanyJobCard({
    Key key,
    this.job,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            (MaterialPageRoute(builder: (context) => DetailScreen(job: job))));
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Image.network(job.companyLogo),
            ),
            SizedBox(
              width: 27,
            ),
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: greyText))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      job.name,
                      style: body.copyWith(fontSize: 18),
                    ),
                    Text(
                      job.companyName,
                      style: subtitleLight,
                    ),
                    SizedBox(height: 18)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
