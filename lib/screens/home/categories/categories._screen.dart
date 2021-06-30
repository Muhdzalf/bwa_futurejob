import 'package:bwa_job/screens/home/components/job_list.dart';
import 'package:flutter/material.dart';

import '../../../theme.dart';

class CategoriesScreen extends StatelessWidget {
  final String imageurl;
  final String title;

  const CategoriesScreen({Key key, this.imageurl, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
              child: Container(
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(imageurl), fit: BoxFit.cover)),
                child: Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    Colors.transparent,
                    primaryColor.withOpacity(0.7)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  child: Stack(
                    children: [
                      Positioned(
                        bottom: 56,
                        left: 24,
                        child: Text(title, style: h1.copyWith(color: white)),
                      ),
                      Positioned(
                        left: 24,
                        bottom: 30,
                        child: Text('12,435 Jobs Available',
                            style:
                                body.copyWith(color: greyText, fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, bottom: 16, top: 30),
                      child: Text(
                        'Big Company',
                        style: body.copyWith(fontSize: 16),
                      ),
                    ),
                    JobList(),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 24, bottom: 16, top: 30),
                      child: Text(
                        'New Startups',
                        style: body.copyWith(fontSize: 16),
                      ),
                    ),
                    JobList(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
