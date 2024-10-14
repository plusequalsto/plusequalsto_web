import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class RightWidget extends StatelessWidget {
  final Size screenSize;
  final double containerWidth;

  const RightWidget({
    super.key,
    required this.screenSize,
    required this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    // Function to launch a URL
    Future<void> launchURL(String url) async {
      Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SizedBox(
      width: containerWidth,
      height: screenSize.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.facebook.com'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/facebook.svg',
                width: 32,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL('https://www.x.com'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/x.svg',
                width: 32,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.instagram.com'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/instagram.svg',
                width: 32,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.linkedin.com'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/linkedin.svg',
                width: 32,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.behance.net'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/behance.svg',
                width: 32,
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.01),
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              onTap: () {
                launchURL(
                    'https://www.dribbble.com'); // Add the URL you want to open
              },
              child: SvgPicture.asset(
                'assets/svgs/dribbble.svg',
                width: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
