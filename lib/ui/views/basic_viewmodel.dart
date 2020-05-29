import 'package:flutter/material.dart';
import 'package:flutterdemo/app/locator.dart';
import 'package:flutterdemo/util/log_plugin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BasicViewModel extends BaseViewModel with LogPlugin {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  void showDialog({
    String title,
    String description,
    String cancelTitle = "",
    String buttonTitle = 'Ok',
    Function onTap,
    Function onCancelTap,
  }) async {
    DialogResponse response = await _dialogService.showDialog(
        title: title,
        description: description,
        cancelTitle: cancelTitle,
        buttonTitle: buttonTitle);
    if (response.confirmed) {
      onTap?.call();
    } else {
      onCancelTap?.call();
    }
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
    _snackbarService.showSnackbar(
        title: title,
        message: message,
        iconData: iconData,
        onTap: onTap,
        shouldIconPulse: shouldIconPulse,
        barBlur: barBlur,
        isDissmissible: isDissmissible,
        duration: duration);
  }
}
