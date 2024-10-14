import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalto_web/constants/web_colors.dart';
import 'package:plusequalto_web/widgets/bullet_text_widget.dart';
import 'package:plusequalto_web/widgets/footer.dart';
import 'package:plusequalto_web/widgets/header.dart';
import 'package:plusequalto_web/widgets/left_widget.dart';
import 'package:plusequalto_web/widgets/right_widget.dart';

class TermsAndConditionsScreen extends StatefulWidget {
  final FluroRouter router;
  const TermsAndConditionsScreen({
    super.key,
    required this.router,
  });

  @override
  State<TermsAndConditionsScreen> createState() =>
      _TermsAndConditionsScreenState();
}

class _TermsAndConditionsScreenState extends State<TermsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.06 : 0.1);
    double centerContainerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.8 : 0.8);
    double screenRatio = screenSize.width / screenSize.height;

    double largeHeading = 48;
    double mediumHeading = 32;
    double smallHeading = 24;
    double bodyText = 16;

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
                                Text(
                                  'Plus Equals To LTD Privacy Notice',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: largeHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.04),
                                Text(
                                  'This is the privacy notice of Plus Equals To LTD, registered in England and Wales, '
                                  'company number 15162654, trading as Plus Equals To.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ), // Adjust text style as needed
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Our registered office is at 86-90 Paul Street, London, England, EC2A 4NE.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Introduction',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'This notice describes how we collect, store, transfer, and use personal data. It informs you about your privacy rights and how the law protects you.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'In the context of the law and this notice, ‘personal data’ refers to any information that clearly identifies you as an individual or could be used to identify you when combined with other information. Any action taken on personal data is referred to as ‘processing’.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'This notice applies to personal data collected through our website (https://www.plusequalsto.com) and social media platforms, including LinkedIn, Facebook, Twitter, Instagram, and YouTube.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Except as outlined below, we do not share, sell, or disclose to third parties any information collected through our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Data Protection Officer',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We have not appointed a Data Protection Officer (DPO) at this time. However, if you have '
                                  'any questions about how we process your personal data or wish to exercise your legal rights, '
                                  'you can contact us at contact@plusequalsto.com.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Personal Data We Process',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'How We Obtain Personal Data',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'The information we process about you includes information:',
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
                                    'you have directly provided to us,',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'that we gather from third-party databases and service providers,',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'and as a result of monitoring how you use our website or services.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Types of Personal Data We Collect Directly',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you use our website or services, for example, when you submit a “Get in touch” form, we may ask you to provide personal data. This may include:',
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
                                    'Personal identifiers: such as your first and last names.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Contact information: such as your email address and telephone number.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Records of communication: including messages sent through our website, email messages, and telephone conversations.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Marketing preferences: indicating what types of marketing you would like to receive.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Types of Personal Data We Collect from Your Use of Our Services',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'By using our website and services, we may process the following types of information:',
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
                                    'Contributions: Information you provide to our community, such as reviews or feedback.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Responses: Your replies to polls and surveys.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Technical Information: This includes hardware and software details such as your IP address, browser type and version, and your device’s operating system.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Usage Information: Frequency of service usage, pages visited on our website, whether you interact with our messages, and whether you reply to them.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Transaction Information: Details of consultancy services provided to you.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Marketing Preferences: Your preferences regarding receiving marketing from us and how you wish to communicate with us.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Our Use of Aggregated Information',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We may collect and aggregate anonymous data, such as statistical or demographic information, for any purpose. Aggregated information is derived from your personal data but does not identify you as an individual and, as such, is not considered personal data under the law.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'For instance, we may aggregate usage data to evaluate whether a specific feature of our website is useful. However, if we combine aggregated data with your personal data in a way that identifies you, we will treat the combined data as personal data in accordance with this privacy notice.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Special Categories of Personal Data',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not collect any special categories of personal data. These special categories include data about your race, ethnicity, religious or philosophical beliefs, sexual orientation, political opinions, trade union membership, health information, and genetic or biometric data.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'If You Do Not Provide Personal Data',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'If we are required by law or under a contract to collect personal data from you, and you fail to provide the necessary data when requested, we may not be able to fulfil our obligations under that contract. If this occurs, we may have to suspend the service you receive. We will notify you if this happens.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'The Bases on Which We Process Your Personal Data',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'The law requires us to identify which of the six legal bases we use to process your personal data. We will inform you of the legal basis for processing your personal data and cease processing if that basis no longer applies. Should the legal basis change, we will notify you if required by law.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information We Process Due to a Contractual Obligation',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you contact us for our consultancy services or agree to our terms and conditions, a contract is formed between you and us. To fulfil our obligations under this contract, we must process the information you provide. Some of this data may be personal.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We may use your information to:',
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
                                    'Verify your identity for security purposes.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Provide you with our consultancy services.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Offer suggestions or advice on how to effectively utilize our services.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We process this information because there is a contract between us or because you have requested that we use the information to take steps before entering into a contract. We will continue processing this information until the contract ends or is terminated by either party.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information We Process with Your Consent',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you take certain actions, such as browsing our website or requesting more information about our business, job opportunities, or our products and services, you consent to our processing of information that may include personal data.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Whenever possible, we seek your explicit consent for such processing. For instance, we ask you to agree to the use of non-essential cookies when you visit our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'If you grant us explicit permission, we may occasionally share your name and contact information with selected partners whom we believe could offer you services or products of interest.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We will continue to process your information based on your consent until you withdraw it or it is reasonably assumed that your consent is no longer valid.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'You can withdraw your consent at any time by contacting us at contact@plusequalsto.com. Please note that if you do so, you may not be able to continue using our website or services.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'While we strive to obtain and retain your consent for processing your information, the withdrawal of your consent does not automatically prevent us from continuing to process your data. The law may permit us to continue processing your personal data if we have another valid basis for doing so, such as fulfilling a legal obligation.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information We Process for Legitimate Interests',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We may process your information if there is a legitimate interest for either you or us. When doing so, we carefully consider:',
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
                                    'Whether the same objective can be achieved through alternative means',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'The potential harm of processing (or not processing) your data',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Whether you would reasonably expect us to process your data',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Examples of processing based on legitimate interests include:',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: smallHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                buildBulletPoint('Improving our services',
                                    mediumHeading, bodyText),
                                buildBulletPoint(
                                    'Maintaining accurate records for the effective administration of our business',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Responding to unsolicited communications that we believe you expect a response to',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Preventing fraudulent use of our services',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Exercising our legal rights, including fraud detection and intellectual property protection',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Obtaining professional advice necessary for managing business risk',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Protecting your interests when we believe we have a duty to do so',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information We Process Because We Have a Legal Obligation',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'In some cases, we are required to process your information to comply with statutory obligations. For instance, we may need to provide information to legal authorities if requested and authorized by law, such as via a search warrant or court order.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information We Process to Protect Vital Interests',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We may process personal information to protect someone’s life in situations where consent cannot be given and other lawful bases are not applicable. For example, we might inform relevant organizations if we have concerns about the safety of a vulnerable person.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'How and When We Process Your Personal Data',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Your Personal Data is Not Shared',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not share or disclose any information collected through our website with third parties.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information You Provide',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Our website allows you to post information intended for others to read, copy, download, or use. For example, when you leave a review or message, we assume that you consent to your message being seen by others. Your name may be displayed with your message, which could contain personal data.',
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
                                    'Tagging images', mediumHeading, bodyText),
                                buildBulletPoint(
                                    'Clicking icons next to messages to show agreement, disagreement, or appreciation',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you post personal data, it is your responsibility to consider the privacy level of those who may access it. We do not specifically use this information beyond facilitating its display or sharing. However, we reserve the right to store it and use it in the future as we see fit.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'You are provided with a public profile page, which may be indexed by search engines and accessed by third parties. Information on this profile may be publicly available. Once your information is in the public domain, we cannot control how others may use it, and we accept no responsibility for their actions.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'If you make a reasonable request to delete personal data that you have posted, and there is no legal basis for us to retain it, we may agree to your request at our discretion. You can contact us regarding such requests at contact@plusequalsto.com.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Payment Information',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not collect or store any payment information through our website or by any other means. Our employees and contractors do not have access to your payment details.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you proceed to make a payment, you will be redirected to a secure page hosted by a reputable payment service provider, Tide, or a similar service. While this page may appear similar to our website, it is not managed or controlled by us.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Job Application and Employment',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'If you submit information related to a job application, we may retain it for up to three years in case we decide to reach out to you later.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'During your employment with us, we will collect information about you and your work periodically. This information will be used solely for purposes directly relevant to your employment. After your employment ends, we will keep your file for five years before securely deleting or destroying it.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Information Obtained from Third Parties',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'While we do not share your personal data with third parties (except as outlined in this notice), we may occasionally receive data indirectly derived from your personal data from third parties whose services we utilize. This information is not personally identifiable.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Third-Party Advertising on Our Website',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Our website may feature advertisements from third parties. These advertisers, their agents, or other affiliated companies may employ technology that automatically collects information about you when their ads are displayed. They may also use cookies or JavaScript to customize content and measure the performance of their ads.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not control these technologies or the information collected by these parties, so this privacy notice does not cover their information practices.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Disputes Between Users',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'In the event of a dispute between you and another user, we may share your basic personal data, business information, and contact details with the other user, provided you consent to this. We may also share additional information to facilitate resolution through litigation or alternative dispute resolution methods at our discretion.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Service Providers and Business Partners',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                buildBulletPoint(
                                    'Passing your payment information to our payment service provider to process payments.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Using fraud prevention and credit reference agencies to verify your identity, and sharing your information with them if we suspect fraudulent activity on our website.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Providing your contact information to advertising agencies to promote our services.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Use of Information Collected Through Automated Systems',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Cookies',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Cookies are small text files placed on your computer’s hard drive by your web browser when you visit websites that use them. They allow for the storage of information gathered on one web page until it is needed later.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Cookies are commonly used to personalize your browsing experience by remembering your preferences. They also provide essential functionality, such as security and network management, recording interactions with the website, and serving relevant advertisements based on your browsing history.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Some cookies are temporary (session cookies), while others remain until you delete them. You can manage cookie settings through your web browser, allowing you to delete any specific cookie or prevent their use entirely.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'The law requires your explicit consent for the use of cookies that are not essential for the operation of a website. When you first visit our website, we ask for your consent regarding cookies. If you decline, we will not use them during your visit, except to note your non-consent for future visits.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Choosing not to use cookies or disabling them in your browser settings may limit your ability to access certain features of our website.',
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
                                    'To track your usage of our website.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'To record whether you have seen specific messages displayed on our website.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'To keep you signed in to your account.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'To save your responses to surveys and questionnaires while you complete them.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'To maintain the conversation thread during live chats with our support team.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'For more details about the cookies we use, please refer to our cookie policy.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Personal Identifiers from Your Browsing Activity',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We record requests from your web browser to our servers for web pages and content on our website. This includes information about your geographical location, Internet service provider, and IP address, as well as details about the device and software you are using to browse our website, such as the type of computer and screen resolution.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We use this aggregated information to assess the popularity of our web pages and evaluate our performance in delivering content. If combined with other data from your previous visits, this information could potentially be used to identify you personally, even if you are not logged into our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Re-Marketing',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Re-marketing involves the use of tracking technologies, such as cookies or web beacons (also known as action tags or single-pixel GIFs), to monitor the pages you visit and display relevant advertisements for our services when you browse other websites.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'The advantage of re-marketing technology is that it enables us to deliver more useful and relevant ads, avoiding the repetition of advertisements you may have already seen.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We may occasionally engage third-party advertising services to assist us with re-marketing. If you have consented to the use of these tracking technologies, you may encounter advertisements for our products and services on other websites.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not share your personal data with advertisers or third-party re-marketing service providers. However, if you are a member of a website affiliated with a business that provides such services, that affiliated business may gain insights into your preferences based on your usage of our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Other Matters',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Use of Our Services by Children',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We do not sell products or services intended for purchase by children, nor do we market to them. If you are under 18, you may only use our website with the consent of a parent or guardian. We collect data about all users and visitors, including children, regardless of age.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Encryption of Data Sent Between Us',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We employ Secure Sockets Layer (SSL) certificates to authenticate our identity to your browser and to encrypt any data you provide. When information is exchanged between us, you can verify the use of SSL by looking for a closed padlock symbol or other trust marks in your browser’s URL bar.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Delivery of Services Using Third-Party Communication Software',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'With your consent, we may communicate using third-party software such as Facebook (WhatsApp), Apple (FaceTime), Microsoft (Skype), or Zoom Video Communications (Zoom). These communication methods should secure your personal data through encryption and other technologies. The providers of such software are expected to comply with all applicable privacy laws, including the GDPR. If you have concerns about using specific software for communication, please let us know.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Data Processing Outside the UK',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                buildBulletPoint(
                                    'The processor is part of our corporate group and adheres to the same binding corporate rules regarding data processing.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Our contracts with data processors include data protection clauses approved by a supervisory authority.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'We comply with a code of conduct sanctioned by a supervisory authority.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'We are certified under an approved certification mechanism as outlined in the Act.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Both our organization and the processor are public authorities with legally binding agreements or administrative arrangements approved by a supervisory authority concerning data protection.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Control Over Your Information',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'It is crucial that the personal data we hold about you is accurate and up to date. Please inform us of any changes. You may contact us at any time to request access to the personal data we hold about you. You can also review or update your personally identifiable information by signing into your account on our website.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Communicating with Us',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'When you contact us via telephone, our website, or email, we collect the data you provide to respond with the information you need. We document your request and our response to enhance our business efficiency. We do not retain personally identifiable information, such as your name or email address, linked to your message.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Complaints',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'If you are dissatisfied with our privacy policy or wish to lodge a complaint, please inform us. We will record the information you provide based on your consent and use it to resolve your complaint. While we aim to investigate all complaints related to user-generated content, we may not address them immediately. If warranted or legally required, we will remove content in question.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                buildBulletPoint(
                                    'If your complaint necessitates notifying another party, we may share relevant information, but we do so as infrequently as possible and at our discretion.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Retention Period',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                buildBulletPoint(
                                    'Provide the services you have requested.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Comply with legal obligations, including those required by tax authorities.',
                                    mediumHeading,
                                    bodyText),
                                buildBulletPoint(
                                    'Support a legal claim or defense.',
                                    mediumHeading,
                                    bodyText),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Compliance with the Law',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'Our privacy policy complies with UK law, specifically the Data Protection Act 2018, incorporating the EU General Data Protection Regulation (GDPR) and the Privacy and Electronic Communications Regulations (PECR).',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                Text(
                                  'Review of This Privacy Policy',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: mediumHeading,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                Text(
                                  'We will update this privacy notice periodically as necessary.',
                                  style: TextStyle(
                                    color: WebColors.textPrimary,
                                    fontSize: bodyText,
                                    fontFamily:
                                        GoogleFonts.poppins().fontFamily,
                                    fontWeight: FontWeight.normal,
                                  ),
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
