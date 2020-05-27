import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterdemo/ui/views/githubuserlist/github_user_list_view.dart';
import 'package:flutterdemo/ui/views/home/home_view.dart';
import 'package:flutterdemo/ui/views/imagepicker/image_picker_view.dart';
import 'package:flutterdemo/ui/views/tab/tab_view.dart';
import 'package:flutterdemo/ui/views/webview/webview_view.dart';

@MaterialAutoRouter()
// Run `flutter pub run build_runner build` to generate router class when changed
class $Router {
  @initial
  HomeView homeViewRoute;
  TabView tabViewRoute;
  ImagePickerView imagePickerViewRoute;
  GithubUserListView githubUserListViewRoute;
  WebViewView webViewView;
}
