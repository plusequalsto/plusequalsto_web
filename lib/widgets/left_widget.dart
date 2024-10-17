import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeftWidget extends StatelessWidget {
  final Size screenSize;
  final double containerWidth;

  const LeftWidget({
    super.key,
    required this.screenSize,
    required this.containerWidth,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: containerWidth,
      height: screenSize.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name != '/') {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/', // Named route
                      (Route<dynamic> route) => true,
                    );
                  }
                },
                child: SvgPicture.asset(
                  'assets/svgs/plusequalsto_logo.svg', // Path to your background image
                  width: screenSize.width < 640 ? 32 : 64,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
