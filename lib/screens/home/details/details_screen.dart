import 'package:flutter/material.dart';

import '../../../theme.dart';
import 'components/detail_desc.dart';

class DetailScreen extends StatelessWidget {
  final String companyLogo;
  final String companyName;
  final String job;

  const DetailScreen({Key key, this.companyLogo, this.companyName, this.job})
      : super(key: key);
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
                    companyLogo,
                    height: 60,
                  ),
                  Text(
                    job,
                    style: h1,
                  ),
                  Text(
                    '$companyName • Jakarta',
                    style: subtitle,
                  ),
                ],
              ),
            ),
            // About The job
            Container(
                padding: EdgeInsets.only(left: 24, top: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About The Job',
                      style: body,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailDescription(
                      text: 'Full-Time On Site',
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    DetailDescription(
                      text: 'Start at \$18,000 per month',
                    )
                  ],
                )),
            // Qualification
            Container(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Qualification',
                    style: body,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text:
                        'Candidate must possess at least a Bachelor\'s Degree.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text:
                        'Able to use Microsoft Office and Google based service.',
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text:
                        'Have an excellent time management, good at organized and details',
                  ),
                ],
              ),
            ),

            // Responsibilities
            Container(
              padding: EdgeInsets.only(left: 24, top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Respondsibilities',
                    style: body,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  DetailDescription(
                    text:
                        'Initiate and promote any programs, events, training, or activities.',
                  ),
                  SizedBox(
                    height: 16,
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
