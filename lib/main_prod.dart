import 'package:flutter/material.dart';

import 'app/locator.dart';
import 'app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Flutter Demo',
    flavorName: 'prod',
    apiBaseUrl: 'https://prod-api.example.com/',
    child: new MyApp(),
  );
  setupLocator();
  runApp(configuredApp);
}
