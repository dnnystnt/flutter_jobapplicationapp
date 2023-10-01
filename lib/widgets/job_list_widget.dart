import 'package:flutter/material.dart';
import 'package:job_application/pages/detail_page.dart';
import 'package:job_application/theme.dart';

class JobList extends StatelessWidget {
  final String imageURL;
  final String textone;
  final String texttwo;

  const JobList(
      {super.key,
      required this.imageURL,
      required this.textone,
      required this.texttwo});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 32),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(),
            ),
          );
        },
        child: Row(
          children: [
            Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    imageURL,
                  ),
                ),
              ),
            ),
            SizedBox(width: 26),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textone, style: jobTextStyle),
                Text(texttwo, style: companyTextStyle),
                SizedBox(height: 12),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.0),
                  child: Container(
                    height: 1.0,
                    width: 175.0,
                    color: Color(0xffECEDF1),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
