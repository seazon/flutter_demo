import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uni_links/uni_links.dart';

import '../../../app_config.dart';
import '../basic_view.dart';
import 'home_viewmodel.dart';

class HomeView extends BasicView<HomeViewModel> {
  final Map<String, String> map = Map();

  @override
  Widget builder(BuildContext context, HomeViewModel model, Widget child) {
    var config = AppConfig.of(context);
    handleDeepLink(model);
    return Scaffold(
      appBar: AppBar(
        title: Text("Home (${config.flavorName})"),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            title: Text("1. Tab Layout"),
            onTap: () {
              model.navigateToTab();
            },
          ),
          ListTile(
            title: Text("2. Github User Search"),
            onTap: () {
              model.navigateToGithubUserList();
            },
          ),
          ListTile(
            title: Text("3. Image Picker"),
            onTap: () {
              model.navigateToImagePicker();
            },
          ),
        ],
      ),
    );
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) {
    return HomeViewModel();
  }

  void handleDeepLink(HomeViewModel model) {
    getInitialUri().then((Uri url) {
      print('URL received: $url');
      if (url != null && url.scheme == 'poc') {
        map.addAll(url.queryParameters);
        if (url.path == '/github_user') {
          model.navigateToGithubUserList();
        }
      }
    });
  }
}
