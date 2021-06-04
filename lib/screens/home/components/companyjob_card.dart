import 'package:flutter/material.dart';

import '../../../theme.dart';

class CompanyJobCard extends StatelessWidget {
  final String imageUrl;
  final String job;
  final String companyName;
  const CompanyJobCard({
    Key key,
    this.imageUrl,
    this.job,
    this.companyName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              imageUrl,
            ),
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
                    job,
                    style: body.copyWith(fontSize: 18),
                  ),
                  Text(
                    companyName,
                    style: subtitleLight,
                  ),
                  SizedBox(height: 18)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}