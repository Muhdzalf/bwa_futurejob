import 'package:flutter/material.dart';

import 'companyjob_card.dart';

class JobList extends StatelessWidget {
  const JobList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Company Card
        CompanyJobCard(
          companyName: 'Google',
          job: 'Front-End Developer',
          imageUrl: 'assets/images/social_media/google.png',
        ),
        CompanyJobCard(
          companyName: 'Facebook',
          job: 'Data Scientist',
          imageUrl: 'assets/images/social_media/facebook.png',
        ),
        CompanyJobCard(
          companyName: 'Instagram',
          job: 'UI Designer',
          imageUrl: 'assets/images/social_media/instagram.png',
        ),
      ],
    );
  }
}
