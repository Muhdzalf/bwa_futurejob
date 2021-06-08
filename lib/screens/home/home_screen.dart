import 'package:bwa_job/theme.dart';
import 'package:flutter/material.dart';
import 'components/category_list.dart';
import 'components/job_list.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello',
                          style: subtitle,
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          'Dzalfiqri Sabani',
                          style: h1,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(3),
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 1, color: primaryColor)),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24, bottom: 16),
                    child: Text(
                      'Hot Categories',
                      style: body.copyWith(fontSize: 16),
                    ),
                  ),
                  CategoryList(),
                  Padding(
                    padding: EdgeInsets.only(left: 24, top: 25),
                    child: Text(
                      'Just Posted',
                      style: body.copyWith(fontSize: 16),
                    ),
                  ),
                  JobList()
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                color: greyText,
              ),
              label: 'Menu'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              color: greyText,
            ),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite_border,
                color: greyText,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: greyText,
              ),
              label: 'People'),
        ],
      ),
    );
  }
}
