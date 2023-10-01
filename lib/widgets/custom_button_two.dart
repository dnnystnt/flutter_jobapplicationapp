import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonTwo extends StatelessWidget {
  final String title;
  final double width;
  final Function() onPressed;
  final EdgeInsets margin;
  final Color color01;
  final Color color02;
  final Color color03;

  const CustomButtonTwo({
    super.key,
    required this.title,
    this.width = double.infinity,
    required this.onPressed,
    this.margin = EdgeInsets.zero,
    this.color01 = Colors.transparent,
    this.color02 = Colors.transparent,
    this.color03 = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 55,
      margin: margin,
      child: OutlinedButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          side: BorderSide(
            width: 1.5,
            color: color03,
          ),
          backgroundColor: color01,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(60),
          ),
        ),
        child: Text(
          title,
          style: GoogleFonts.poppins(
            color: color02,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
