import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:plusequalto_web/constants/web_colors.dart';
import 'package:plusequalto_web/routes/web_router_provider.dart';
import 'package:plusequalto_web/routes/web_routes.dart';
import 'package:plusequalto_web/screen/home_screen.dart';
import 'package:plusequalto_web/utils/custom_snackbar_util.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
Logger logger = Logger();
void main() async {
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
      title: 'Plus Equal To',
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
