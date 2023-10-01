import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_application/theme.dart';
import 'package:job_application/widgets/job_card.dart';
import 'package:job_application/widgets/job_list_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Bikin Widget header()
    Widget header() {
      return Container(
        margin: EdgeInsets.only(top: 8, left: 24, right: 24),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Howdy', style: titleTextStyle),
                  Text(
                    'Jason Powell',
                    style: subtitleTextStyle,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/user_pic.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    // Tambahkan Widget body()
    Widget body() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: 24,
          right: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hot Categories',
              style: GoogleFonts.poppins(
                color: Color(0xff272c2f),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  JobCard(
                    text: 'Website Developer',
                    imgURL: 'assets/card_category_one.png',
                  ),
                  JobCard(
                    text: 'Mobile Developer',
                    imgURL: 'assets/card_category_two.png',
                  ),
                  JobCard(
                    text: 'App Designer',
                    imgURL: 'assets/card_category_three.png',
                  ),
                  JobCard(
                    text: 'Content Writer',
                    imgURL: 'assets/card_category_four.png',
                  ),
                  JobCard(
                    text: 'Video Grapher',
                    imgURL: 'assets/card_category_five.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Just Posted',
              style: GoogleFonts.poppins(
                color: Color(0xff272c2f),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                JobList(
                    imageURL: 'assets/google-icon.png',
                    textone: 'Front-End Developer',
                    texttwo: 'Google'),
                JobList(
                    imageURL: 'assets/instagram-icon.png',
                    textone: 'UI Designer',
                    texttwo: 'Instagram'),
                JobList(
                    imageURL: 'assets/facebook-icon.png',
                    textone: 'Data Scienties',
                    texttwo: 'Facebook'),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(top: 30),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          unselectedItemColor: Color(0xffB3B5C4),
          selectedItemColor: Color(0xff272C2F),
          currentIndex: 0,
          elevation: 0,
          iconSize: 24,
          items: [
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_one.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_two.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_three.png'),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/navbar_four.png'),
              ),
              label: '',
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(),
            body(),
          ],
        ),
      ),
    );
  }
}



// lanjut dari Add Bottom Navigation Bar

