import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/pages/signin_page.dart';
import 'package:job_application/widgets/custom_button_one.dart';
import 'package:job_application/widgets/custom_button_two.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 778,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/bg.png',
                  ),
                ),
              ),
              child: Container(
                margin: EdgeInsets.only(
                  top: 30,
                  left: 24,
                  right: 24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Build Your Next \nFuture Career Like \na Master',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      '18,000 jobs available',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 400),
                      width: double.infinity,
                      child: Center(
                        child: Column(
                          children: [
                            CustomButtonOne(
                              title: 'Get Started',
                              width: 220,
                              onPressed: () {},
                              margin: EdgeInsets.only(bottom: 16),
                              color01: Colors.white,
                              color02: Color(0XFF4141A4),
                            ),
                            CustomButtonTwo(
                              title: 'Sign In',
                              width: 220,
                              color01: Colors.transparent,
                              color02: Colors.white,
                              color03: Colors.white,
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignInPage(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
