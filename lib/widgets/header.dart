import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';
import 'package:plusequalsto_web/main.dart';

class Header extends StatefulWidget {
  final Size screenSize;

  const Header({
    super.key,
    required this.screenSize,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  String? _hoveredItem; // Tracks which item is being hovered
  String? _dropdownHoveredItem; // Tracks which item is being hovered

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildMenuItem(context, 'Services', '/services', [
            {'title': 'Consulting', 'route': '/consulting'},
            {'title': 'Development', 'route': '/development'}
          ]),
          SizedBox(width: widget.screenSize.width * 0.02),
          _buildMenuItem(context, 'Contact', '/contact', []),
          SizedBox(width: widget.screenSize.width * 0.02),
          _buildMenuItem(context, 'Blog', '/blog', []),
        ],
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String text, String routeName,
      List<Map<String, String>> dropdownItems) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() {
        _hoveredItem = text;
      }),
      onExit: (_) => setState(() {
        _hoveredItem = null;
      }),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              if (ModalRoute.of(context)?.settings.name != routeName) {
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  routeName,
                  (Route<dynamic> route) => true,
                );
              }
            },
            child: Text(
              text,
              textAlign: TextAlign.left,
              style: TextStyle(
                color: WebColors.textPrimary,
                fontSize: 12,
                fontFamily: GoogleFonts.poppins().fontFamily,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          if (_hoveredItem == text && dropdownItems.isNotEmpty)
            _buildDropdownMenu(dropdownItems),
        ],
      ),
    );
  }

  Widget _buildDropdownMenu(List<Map<String, String>> items) {
    logger.d(widget.screenSize.width * 0.08);
    return AnimatedContainer(
      width: 128,
      height: widget.screenSize.height * 0.16,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.only(top: 4.0), // Adjust for better spacing
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: WebColors.backgroundColor,
        borderRadius: BorderRadius.circular(4.0),
        boxShadow: const [
          BoxShadow(
            color: WebColors.shadowDark,
            blurRadius: 4.0,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((item) {
          return MouseRegion(
            cursor: SystemMouseCursors.click,
            onEnter: (_) => setState(() {
              _dropdownHoveredItem = item['title'];
            }),
            onExit: (_) => setState(() {
              _dropdownHoveredItem = null;
            }),
            child: SizedBox(
              width: widget.screenSize.width,
              height: widget.screenSize.height * 0.04,
              child: GestureDetector(
                onTap: () {
                  if (ModalRoute.of(context)?.settings.name != item['route']) {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      item['route']!,
                      (Route<dynamic> route) => true,
                    );
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4.0),
                  child: Text(
                    item['title']!,
                    style: TextStyle(
                      color: _dropdownHoveredItem == item['title']
                          ? WebColors
                              .textTertiary // Change to desired hover color
                          : WebColors.textSecondary,
                      fontSize: 12,
                      fontFamily: GoogleFonts.poppins().fontFamily,
                      fontWeight: _dropdownHoveredItem == item['title']
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
