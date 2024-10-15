import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:plusequalsto_web/constants/web_colors.dart';
import 'package:plusequalsto_web/routes/web_router_provider.dart';
import 'package:plusequalsto_web/routes/web_routes.dart';
import 'package:plusequalsto_web/screen/home_screen.dart';
import 'package:plusequalsto_web/utils/custom_snackbar_util.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Logger logger = Logger();
void main() async {
  // Set the URL strategy for the app
  setUrlStrategy(
      PathUrlStrategy()); // This enables clean URLs without hash fragments
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
      home: initialNavigation(),
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
}
