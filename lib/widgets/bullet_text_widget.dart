// lib/widgets/bullet_point.dart

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';

Widget buildBulletPoint(String text, double mediumHeading, double fontSize) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        "  •  ",
        style: TextStyle(
          color: WebColors.textPrimary,
          fontSize: mediumHeading,
          fontFamily: GoogleFonts.poppins().fontFamily,
          fontWeight: FontWeight.bold,
        ),
      ),
      Expanded(
        child: Text(
          text,
          style: TextStyle(
            color: WebColors.textPrimary,
            fontSize: fontSize,
            fontFamily: GoogleFonts.poppins().fontFamily,
            fontWeight: FontWeight.normal,
          ),
        ),
      ),
    ],
  );
}
