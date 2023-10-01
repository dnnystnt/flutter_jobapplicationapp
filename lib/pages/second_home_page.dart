import 'package:flutter/material.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widgets/job_list_widget.dart';

class SecondHomePage extends StatelessWidget {
  final String jobTitleHome;
  final String imageURL;

  const SecondHomePage(
      {super.key, required this.jobTitleHome, required this.imageURL});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 270,
                      child: Image.asset(
                        imageURL,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 200,
                      left: 24,
                    ),
                    child: Text(jobTitleHome, style: jobTitleTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 240,
                      left: 24,
                    ),
                    child: Text(
                      '12,309 available',
                      style: availableJobTextStyle,
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Big Companies',
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        JobList(
                          imageURL: 'assets/google-icon.png',
                          textone: 'Front End Developer',
                          texttwo: 'Google',
                        ),
                        SizedBox(height: 16),
                        JobList(
                          imageURL: 'assets/instagram-icon.png',
                          textone: 'UI Designer',
                          texttwo: 'Instagram',
                        ),
                        SizedBox(height: 16),
                        JobList(
                          imageURL: 'assets/facebook-icon.png',
                          textone: 'Data Scientiest',
                          texttwo: 'Facebook',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Startups',
                    ),
                    SizedBox(height: 16),
                    Column(
                      children: [
                        JobList(
                          imageURL: 'assets/google-icon.png',
                          textone: 'Front End Developer',
                          texttwo: 'Google',
                        ),
                        SizedBox(height: 16),
                        JobList(
                          imageURL: 'assets/instagram-icon.png',
                          textone: 'UI Designer',
                          texttwo: 'Instagram',
                        ),
                        SizedBox(height: 16),
                        JobList(
                          imageURL: 'assets/facebook-icon.png',
                          textone: 'Data Scientiest',
                          texttwo: 'Facebook',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
