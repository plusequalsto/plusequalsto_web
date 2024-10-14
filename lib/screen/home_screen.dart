import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalto_web/constants/web_colors.dart';
import 'package:plusequalto_web/main.dart';
import 'package:plusequalto_web/widgets/footer.dart';
import 'package:plusequalto_web/widgets/header.dart';
import 'package:plusequalto_web/widgets/left_widget.dart';
import 'package:plusequalto_web/widgets/right_widget.dart';

class HomeScreen extends StatefulWidget {
  final FluroRouter router;
  const HomeScreen({
    super.key,
    required this.router,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    double containerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.06 : 0.1);
    double centerContainerWidth =
        screenSize.width * (screenSize.width > 900 ? 0.8 : 0.8);
    double screenRatio = screenSize.width / screenSize.height;
    logger.d('Height: ${screenSize.height}');
    logger.d('Width: ${screenSize.width}');
    logger.d('Ratio: $screenRatio');

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
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: centerContainerWidth,
                                height: screenSize.height,
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'Plus Equal To',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: WebColors.textPrimary,
                                      fontSize:
                                          screenSize.width < 640 ? 24 : 32,
                                      fontFamily:
                                          GoogleFonts.poppins().fontFamily,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                              ),
                            ],
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
