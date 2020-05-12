import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutterdemo/ui/views/home/home_view.dart';
import 'package:flutterdemo/ui/views/startup/startup_view.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  StartupView startupViewRoute;
  HomeView homeViewRoute;
}

// `flutter pub run build_runner build` to generate router class