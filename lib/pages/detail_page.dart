import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widgets/custom_button_one.dart';
import 'package:job_application/widgets/custom_button_two.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isApplied = false;

  @override
  Widget build(BuildContext context) {
    // Bikin Widget applyButton()
    Widget applyButton() {
      return CustomButtonOne(
        margin: EdgeInsets.only(top: 40, bottom: 12),
        width: 312,
        title: 'Apply for Job',
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        color01: Color(0xff4141A4),
        color02: Colors.white,
      );
    }

    // Bikin Widget cancelApplyButton()
    Widget cancelApplyButton() {
      return CustomButtonOne(
        margin: EdgeInsets.only(top: 40, bottom: 12),
        width: 312,
        title: 'Cancel Apply',
        onPressed: () {
          setState(() {
            isApplied = !isApplied;
          });
        },
        color01: Color(0xffFD4F56),
        color02: Colors.white,
      );
    }

    // Bikin Widget successAppliedMessages()
    Widget successAppliedMessages() {
      return Container(
        width: 320,
        height: 60,
        margin: EdgeInsets.only(bottom: 40),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(0xffECEDF1),
        ),
        child: Center(
          child: Text(
            'You have applied this job and the \nrecruiter will contact you',
            style: GoogleFonts.poppins(
              color: Color(0xffA2A6B4),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 80),
              isApplied ? successAppliedMessages() : SizedBox(),
              Image.asset(
                'assets/google-icon.png',
                width: 60,
                height: 60,
              ),
              SizedBox(height: 20),
              Text(
                'Front-End Developer',
                style: jobApplyTextStyle,
              ),
              Text(
                'Google, Inc • Jakarta',
                style: companyTextStyle,
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'About the Job',
                      style: titleRequirements,
                    ),
                    SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Full Time On Site',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                        SizedBox(height: 12),
                        Row(
                          children: [
                            Image.asset(
                              'assets/dot.png',
                              width: 12,
                              height: 12,
                            ),
                            SizedBox(width: 8),
                            Text(
                              'Start at \$18,000 per month',
                              style: requirementsTextStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Qualifications',
                          style: titleRequirements,
                        ),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Candidate must possess at least a \nBachelor's Degree.",
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Able to use Microsoft Office and Google \nbased service.',
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                            SizedBox(height: 12),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/dot.png',
                                  width: 12,
                                  height: 12,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  'Have an excellent time management, \ngood at organized and details',
                                  style: requirementsTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Responsibilites',
                              style: titleRequirements,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      "Initiate and promote any programs, events, \ntraining, or activities.",
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                                SizedBox(height: 12),
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/dot.png',
                                      width: 12,
                                      height: 12,
                                    ),
                                    SizedBox(width: 8),
                                    Text(
                                      'Assessing and anticipating needs and \ncollaborate with Division.',
                                      style: requirementsTextStyle,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Center(
                              child: Column(
                                children: [
                                  isApplied
                                      ? cancelApplyButton()
                                      : applyButton(),
                                  CustomButtonTwo(
                                    margin: EdgeInsets.only(bottom: 40),
                                    width: 312,
                                    color02: Color(0xffB3B5C4),
                                    title: 'Message Recruiter',
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ),
                          ],
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



// Lanjut dari Add button (Detail Page #3) 03:49

