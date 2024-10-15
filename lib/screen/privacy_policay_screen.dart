import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalto_web/constants/web_colors.dart';
import 'package:plusequalto_web/widgets/bullet_text_widget.dart';
import 'package:plusequalto_web/widgets/footer.dart';
import 'package:plusequalto_web/widgets/header.dart';
import 'package:plusequalto_web/widgets/header_text_widget.dart';
import 'package:plusequalto_web/widgets/left_widget.dart';
import 'package:plusequalto_web/widgets/right_widget.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  final FluroRouter router;
  const PrivacyPolicyScreen({
    super.key,
    required this.router,
  });

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.06 : 0.1);
    double centerContainerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.8 : 0.8);
    double screenRatio = screenSize.width / screenSize.height;

    double largeHeading = 48;
    double mediumHeading = 36;
    double smallHeading = 20;
    double bodyText = 18;

    return Scaffold(
      body: Stack(
        children: [
          // Foreground Content
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Left Widget
                    LeftWidget(
                      screenSize: screenSize,
                      containerWidth: containerWidth,
                    ),
                    // Center Container
                    SizedBox(
                      width: centerContainerWidth,
                      height: screenSize.height,
                      child: ScrollConfiguration(
                        behavior: const ScrollBehavior()
                            .copyWith(overscroll: false, scrollbars: false),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Padding(
                            padding: EdgeInsets.all(screenRatio * 6),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: screenSize.height * 0.08),
                                // Large Heading
                                SelectableText(
                                  'Plus Equals To LTD Privacy Policy',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: largeHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SelectableText(
                                  '15 October 2024',
                                  style: TextStyle(
                                    color: WebColors.borderColor,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                // Body Text
                                SizedBox(height: screenSize.height * 0.06),
                                SelectableText(
                                  'This is the privacy notice of Plus Equals To LTD, registered in England and Wales, company number 15162654, trading as Plus Equals To.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ), // Adjust text style as needed
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Our registered office is at 86-90 Paul Street, London, England, EC2A 4NE.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.04),
                                // Medium Heading
                                textHeaderWidget(
                                  '1.',
                                  smallHeading,
                                  screenSize.width * 0.2,
                                  'General Conditions',
                                  mediumHeading,
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'We place great importance on protecting and respecting your privacy. This policy aims to inform you of our practices regarding the collection and use of the information you provide through our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.04),
                                textHeaderWidget(
                                  '2.',
                                  smallHeading,
                                  screenSize.width * 0.2,
                                  'Management of Personal Data',
                                  mediumHeading,
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'When you use our website, we may collect the following information: the URL of the links through which you accessed our site, your access provider, and your Internet Protocol (IP) address.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'In the UK, personal data is specifically protected under the General Data Protection Regulation (GDPR) and the Data Protection Act 2018. Plus Equals To LTD only collects personal information necessary for the services we provide. You provide this information freely and knowingly, particularly when you enter it yourself. We will inform you clearly about any mandatory or optional information you need to provide.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'According to the GDPR, you have the right to access, rectify, or object to the use of your personal data. You can exercise these rights by submitting a signed written request along with a copy of proof of identity, including the address for our response.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Your personal information is not published without your knowledge and is not exchanged, transferred, assigned, or sold to third parties. In the event of a transfer of ownership of Plus Equals To LTD, your information may be passed on to the potential buyer, who will also be obligated to comply with these privacy protections.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.04),
                                textHeaderWidget(
                                  '3.',
                                  smallHeading,
                                  screenSize.width * 0.2,
                                  'Cookies and Hypertext Links',
                                  mediumHeading,
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'During your visits, we may collect data to better understand how you use our website, in accordance with applicable legislation and your consent. This data is processed and aggregated anonymously; we cannot trace the behavior of any individual user.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Cookies may be placed on your device while browsing our site. A cookie is a small file that does not identify the user but records information about your browsing history. The data obtained is used to enhance your experience on our website and for various analytics purposes.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Disabling cookies may restrict access to certain services. However, you can adjust your browser settings to disable cookies. The options for managing cookies are usually found in the "Options," "Tools," or "Preferences" menus of your browser. For assistance, you can refer to the following resources:',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                buildBulletPoint(
                                  'Microsoft Internet Explorer',
                                  mediumHeading,
                                  bodyText,
                                ),
                                buildBulletPoint(
                                  'Google Chrome',
                                  mediumHeading,
                                  bodyText,
                                ),
                                buildBulletPoint(
                                  'Safari',
                                  mediumHeading,
                                  bodyText,
                                ),
                                buildBulletPoint(
                                  'Firefox',
                                  mediumHeading,
                                  bodyText,
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Please note that if you choose to refuse cookies, you will still be able to browse our website, but some features and options may not function properly.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'Additionally, our website may contain hypertext links to other sites. While these links are set up with our permission, Plus Equals To LTD does not control the content of these external sites and disclaims any responsibility for their privacy practices. We recommend reviewing the privacy policies of any third-party sites before providing your personal data.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.04),
                                textHeaderWidget(
                                  '4.',
                                  smallHeading,
                                  screenSize.width * 0.2,
                                  'Contact',
                                  mediumHeading,
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SelectableText(
                                  'For any questions regarding this privacy policy or requests concerning your personal data, please contact us via:',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                buildBulletPoint(
                                  'Email: contact@plusequalsto.com',
                                  mediumHeading,
                                  bodyText,
                                ),
                                buildBulletPoint(
                                  'Mail: Plus Equals To LTD, 86-90 Paul Street, London, England, EC2A 4NE',
                                  mediumHeading,
                                  bodyText,
                                ),
                                SizedBox(height: screenSize.height * 0.08),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    // Right Widget
                    RightWidget(
                      screenSize: screenSize,
                      containerWidth: containerWidth,
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Header
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Header(screenSize: screenSize),
          ),
          // Footer
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Footer(screenSize: screenSize),
          ),
        ],
      ),
    );
  }
}
