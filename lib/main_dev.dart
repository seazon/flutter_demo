import 'package:flutter/material.dart';
import 'package:flutterdemo/app/locator.dart';

import 'app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Flutter Demo Dev',
    flavorName: 'dev',
    apiBaseUrl: 'https://dev-api.example.com/',
    child: new MyApp(),
  );
  setupLocator();
  runApp(configuredApp);
}
