import 'package:flutter/material.dart';
import 'package:flutterdemo/app/locator.dart';
import 'package:flutterdemo/util/log_plugin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BasicViewModel extends BaseViewModel with LogPlugin {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  Future<DialogResponse> showDialog({
    String title,
    String description,
    String cancelTitle,
    String buttonTitle = 'Ok',
  }) {
    return _dialogService
        .showDialog(
        title: title,
        description: description,
        cancelTitle: cancelTitle,
        buttonTitle: buttonTitle)
        .whenComplete(() => {});
  }

  void showSnackBar({
    String title,
    String message,
    IconData iconData,
    Function onTap,
    bool shouldIconPulse = false,
    double barBlur = 0,
    bool isDissmissible = true,
    Duration duration = const Duration(seconds: 3),
  }) {
    _snackbarService.showSnackbar(title: title,
        message: message,
        iconData: iconData,
        onTap: onTap,
        shouldIconPulse: shouldIconPulse,
        barBlur: barBlur,
        isDissmissible: isDissmissible,
        duration: duration);
  }
}
