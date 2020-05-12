import 'package:flutter/material.dart';
import 'package:flutterdemo/page/home_page.dart';

import 'app_config.dart';
import 'main.dart';

void main() {
  var configuredApp = new AppConfig(
    appName: 'Flutter Demo Stag',
    flavorName: 'stag',
    apiBaseUrl: 'https://stag-api.example.com/',
    child: new MyApp(),
  );
  runApp(configuredApp);
}
