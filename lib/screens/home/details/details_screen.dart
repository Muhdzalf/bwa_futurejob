import 'package:bwa_job/models/job_model.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'components/detail_desc.dart';

class DetailScreen extends StatelessWidget {
  final JobModel job;

  const DetailScreen({Key key, this.job}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 80,
            ),
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
                  children: [
                    DetailDescription(
                      text: 'Full-Time On Site',
                    ),
                    DetailDescription(
                      text: 'Start at \$18,000 per month',
                    )
                  ],
                )),
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
                children: [
                  DetailDescription(
                    text:
                        'Candidate must possess at least a Bachelor\'s Degree.',
                  ),
                  DetailDescription(
                    text:
                        'Able to use Microsoft Office and Google based service.',
                  ),
                  DetailDescription(
                    text:
                        'Have an excellent time management, good at organized and details',
                  ),
                ],
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
                children: [
                  DetailDescription(
                    text:
                        'Initiate and promote any programs, events, training, or activities.',
                  ),
                  DetailDescription(
                    text:
                        'Assessing and anticipating needs and collaborate with Division..',
                  ),
                ],
              ),
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 80),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Apply Job',
                    style: body.copyWith(color: white),
                  ),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 11),
                    primary: primaryColor,
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
