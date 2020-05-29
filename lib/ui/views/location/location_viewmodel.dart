import 'package:flutterdemo/util/location_permissions_plugin.dart';
import 'package:flutterdemo/util/location_plugin.dart';
import 'package:location/location.dart';
import 'package:stacked_services/stacked_services.dart';

import '../basic_viewmodel.dart';

class LocationViewModel extends BasicViewModel
    with LocationPlugin, LocationPermissionsPlugin {
  LocationData _locationData;

  LocationData get locationData => _locationData;

  void requestLocation() async {
    try {
      _locationData = await location();
      if (_locationData != null) {
        d("got location Data, notify");
        notifyListeners();
      }
    } catch (e) {
      // TODO move i18n
      // TODO dialog easy handler
      DialogResponse response = await showDialog(
        title: "Error",
        description:
            "Permisstion not grant, do you want to app setting to grant it?",
        cancelTitle: "cancel",
        buttonTitle: "Goto settings",
      );
      if (response.confirmed) {
        openAppSettings();
      }
    }
  }
}
