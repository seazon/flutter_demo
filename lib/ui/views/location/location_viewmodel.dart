import 'package:flutterdemo/ui/views/location/location_navigator.dart';
import 'package:flutterdemo/util/location_permissions_plugin.dart';
import 'package:flutterdemo/util/location_plugin.dart';
import 'package:location/location.dart';

import '../basic_viewmodel.dart';

class LocationViewModel extends BasicViewModel
    with LocationPlugin, LocationPermissionsPlugin {
  LocationData _locationData;

  LocationData get locationData => _locationData;

  final LocationNavigator navigator;

  LocationViewModel({this.navigator});

  void requestLocation() async {
    try {
      _locationData = await location();
      if (_locationData != null) {
        d("got location Data, notify");
        notifyListeners();
      }
    } catch (e) {
      navigator.showErrorDialog();
    }
  }
}
