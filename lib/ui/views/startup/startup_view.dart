import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'startup_viewmodel.dart';

class StartupView extends ViewModelBuilderWidget<StartupViewModel> {
  @override
  bool get reactive => true;

  @override
  bool get disposeViewModel => true;

  @override
  Widget builder(BuildContext context, StartupViewModel model, Widget child) {
    return Scaffold(
      body: Center(
        child: Text("Start up View"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => model.navigateToHome(),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(BuildContext context) => StartupViewModel();
}
