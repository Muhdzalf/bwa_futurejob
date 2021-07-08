import 'package:bwa_job/models/job_model.dart';
import 'package:bwa_job/providers/apply_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../theme.dart';
import 'components/detail_desc.dart';

class DetailScreen extends StatelessWidget {
  final JobModel job;

  const DetailScreen({Key key, this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var applyProvider = Provider.of<ApplyProvider>(context);
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            applyProvider.message,
            Container(
              child: Column(
                children: [
                  Image.network(
                    job.companyLogo,
                    height: 60,
                  ),
                  Text(
                    job.name,
                    style: h1,
                  ),
                  Text(
                    '${job.companyName} • ${job.location}',
                    style: subtitle,
                  ),
                ],
              ),
            ),
            DescTitle(
              text: 'About The Job',
            ),
            // About The job
            Container(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: job.about
                        .map((text) => DetailDescription(
                              text: text,
                            ))
                        .toList())),
            // Qualification
            DescTitle(
              text: 'Qualification',
            ),
            Container(
              padding: EdgeInsets.only(
                left: 24,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: job.qualifications
                    .map((text) => DetailDescription(
                          text: text,
                        ))
                    .toList(),
              ),
            ),

            // Responsibilities
            DescTitle(
              text: 'Responsibilities',
            ),
            Container(
                padding: EdgeInsets.only(left: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: job.responsibilities
                        .map((text) => DetailDescription(
                              text: text,
                            ))
                        .toList())),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {
                    applyProvider.isApplied = !applyProvider.isApplied;
                  },
                  child: Text(
                    applyProvider.text,
                    style: body.copyWith(color: white),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    primary: applyProvider.color,
                    shape: StadiumBorder(),
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(bottom: 30),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Message Recruiter',
                  style: bodyLight.copyWith(color: greyText),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppliedMessage extends StatelessWidget {
  const AppliedMessage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 9),
        decoration:
            BoxDecoration(color: grey, borderRadius: BorderRadius.circular(49)),
        child: Text(
          'You have applied this job and the recruiter will contact you',
          textAlign: TextAlign.center,
          style: body.copyWith(color: greyText),
        ));
  }
}

class DescTitle extends StatelessWidget {
  final String text;
  const DescTitle({
    Key key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Text(
        text,
        style: body,
      ),
    );
  }
}
