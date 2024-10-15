import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';
import 'package:plusequalsto_web/widgets/clickable_text.dart';

class Footer extends StatelessWidget {
  final Size screenSize;

  const Footer({
    super.key,
    required this.screenSize,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: screenSize.width >= 640
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClickableText(
                  textBeforeClickable: '© 2024 ',
                  clickableText: 'Plus Equals To',
                  underline: false,
                  color: WebColors.textPrimary,
                  clickcolor: WebColors.accentColor,
                  textAfterClickable: '. All rights reserved.',
                  fontSize: 12,
                  onTap: () {
                    if (ModalRoute.of(context)?.settings.name != '/') {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/', // Named route
                        (Route<dynamic> route) => true,
                      );
                    }
                  },
                ),
                SizedBox(width: screenSize.width * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          if (ModalRoute.of(context)?.settings.name !=
                              '/privacy_policy') {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/privacy_policy', // Named route
                              (Route<dynamic> route) => true,
                            );
                          }
                        },
                        child: Text(
                          'Privacy Policy',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: WebColors.textPrimary,
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          if (ModalRoute.of(context)?.settings.name !=
                              '/terms_and_conditions') {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/terms_and_conditions', // Named route
                              (Route<dynamic> route) => true,
                            );
                          }
                        },
                        child: Text(
                          'Terms and Conditions',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: WebColors.textPrimary,
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          if (ModalRoute.of(context)?.settings.name !=
                              '/privacy_policy') {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/privacy_policy', // Named route
                              (Route<dynamic> route) => true,
                            );
                          }
                        },
                        child: Text(
                          'Privacy Policy',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: WebColors.textPrimary,
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.02),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          if (ModalRoute.of(context)?.settings.name !=
                              '/terms_and_conditions') {
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              '/terms_and_conditions', // Named route
                              (Route<dynamic> route) => true,
                            );
                          }
                        },
                        child: Text(
                          'Terms and Conditions',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: WebColors.textPrimary,
                            fontSize: 12,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenSize.height * 0.02),
                ClickableText(
                  textBeforeClickable: '© 2024 ',
                  clickableText: 'Plus Equals To',
                  underline: false,
                  color: WebColors.textPrimary,
                  clickcolor: WebColors.accentColor,
                  textAfterClickable: '. All rights reserved.',
                  fontSize: 12,
                  onTap: () {
                    if (ModalRoute.of(context)?.settings.name != '/') {
                      Navigator.pushNamedAndRemoveUntil(
                        context,
                        '/', // Named route
                        (Route<dynamic> route) => true,
                      );
                    }
                  },
                ),
              ],
            ),
    );
  }
}
