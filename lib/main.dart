import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';
import 'package:plusequalsto_web/routes/web_router_provider.dart';
import 'package:plusequalsto_web/routes/web_routes.dart';
import 'package:plusequalsto_web/screen/home_screen.dart';
import 'package:plusequalsto_web/utils/custom_snackbar_util.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'dart:html' as html;

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Logger logger = Logger();

void main() async {
  // Set the URL strategy for the app
  usePathUrlStrategy(); // This enables clean URLs without hash fragments
  final router = FluroRouter();

  defineRoutes(router);
  runApp(
    WebRouterProvider(
      router: router,
      child: Main(router: router),
    ),
  );
}

class Main extends StatefulWidget {
  final FluroRouter router;
  const Main({super.key, required this.router});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  bool _showCookieNotice = false;

  @override
  void initState() {
    super.initState();
    checkCookie();
  }

  void checkCookie() {
    const cookieName = 'hasVisited';
    final cookieValue = html.document.cookie;

    // Check if the cookie already exists
    if (!cookieValue!.contains(cookieName)) {
      setState(() {
        _showCookieNotice = true;
      });
    } else {
      // If the cookie exists, you can also update its expiration if desired
      html.document.cookie =
          '$cookieName=true; max-age=${30 * 24 * 60 * 60}'; // 30 days
    }
  }

  void acceptCookies() {
    setState(() {
      _showCookieNotice = false;
    });
    // Set the cookie for future visits
    html.document.cookie =
        'hasVisited=true; max-age=${30 * 24 * 60 * 60}'; // 30 days
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plus Equals To',
      theme: ThemeData(
        scaffoldBackgroundColor: WebColors.primaryColor,
        useMaterial3: true,
      ),
      scaffoldMessengerKey: CustomSnackBarUtil.rootScaffoldMessengerKey,
      navigatorKey: navigatorKey,
      onGenerateRoute: widget.router.generator,
      home: Scaffold(
        body: Stack(
          children: [
            initialNavigation(),
            if (_showCookieNotice) _buildCookieNotice(),
          ],
        ),
      ),
    );
  }

  Widget initialNavigation() {
    return WebRouterProvider(
      router: widget.router,
      child: HomeScreen(
        router: widget.router,
      ),
    );
  }

  Widget _buildCookieNotice() {
    return Positioned(
      bottom: 20,
      left: 20,
      right: 20,
      child: Card(
        color: Colors.white,
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Expanded(
                child: Text(
                  'We use cookies to enhance your experience. By continuing to visit this site, you agree to our use of cookies.',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: acceptCookies,
                child: const Text('Accept'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
