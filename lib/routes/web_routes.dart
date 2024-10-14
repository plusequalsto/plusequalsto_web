import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:plusequalto_web/screen/contact_screen.dart';
import 'package:plusequalto_web/screen/home_screen.dart';
import 'package:plusequalto_web/screen/privacy_policay_screen.dart';
import 'package:plusequalto_web/screen/terms_and_conditions_screen.dart';

void defineRoutes(FluroRouter router) {
  router.define(
    '/',
    handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return HomeScreen(
          router: router,
        );
      },
    ),
  );
  router.define(
    '/contact',
    handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return ContactScreen(
          router: router,
        );
      },
    ),
  );
  router.define(
    '/privacy_policy',
    handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return PrivacyPolicyScreen(
          router: router,
        );
      },
    ),
  );
  router.define(
    '/terms_and_conditions',
    handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
        return TermsAndConditionsScreen(
          router: router,
        );
      },
    ),
  );
}
