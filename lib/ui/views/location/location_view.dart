import 'package:flutter/material.dart';

import '../basic_view.dart';
import 'location_viewmodel.dart';

class LocationView extends BasicView<LocationViewModel> {
  @override
  Widget builder(BuildContext context, LocationViewModel model, Widget child) {
    d("builder LocationView");
    return Scaffold(
      appBar: AppBar(
        title: Text("location"),
      ),
      body: Column(
        children: <Widget>[
          MaterialButton(onPressed: () => model.requestLocation()),
          Text(model.locationData.toString())
        ],
      ),
    );
  }

  @override
  LocationViewModel viewModelBuilder(BuildContext context) {
    LocationViewModel model = LocationViewModel();
    model.requestLocation();
    return model;
  }
}
