import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalto_web/constants/web_colors.dart';

Widget textHeaderWidget(
    String number, double smallHeading, double width, String text, double mediumHeading) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      Text(
        number,
        style: TextStyle(
          color: WebColors.textPrimary,
          fontSize: smallHeading,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),
      SizedBox(width: width * 0.02),
      Expanded(
        child: SelectableText(
          text,
          style: TextStyle(
            color: WebColors.textPrimary,
            fontSize: mediumHeading,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  );
}
