import 'package:flutterdemo/app/router.gr.dart';

import '../basic_viewmodel.dart';

class HomeViewModel extends BasicViewModel {
  Future navigateToGithubUserList() async {
    await navigationService.navigateTo(Routes.githubUserListViewRoute);
  }

  Future navigateToImagePicker() async {
    await navigationService
        .navigateTo(Routes.imagePickerViewRoute)
        .then((value) {
      if (value != null) {
        showDialog(title: "get image", description: value);
      }
    });
  }

  Future navigateToTab() async {
    await navigationService.navigateTo(Routes.tabViewRoute);
  }

  Future navigateToWebView(String title, String url) async {
    await navigationService.navigateTo(Routes.webViewView, arguments: {
      "title": title,
      "url": url,
    });
  }
  Future navigateToLocation() async {
    await navigationService.navigateTo(Routes.locationView);
  }
}
