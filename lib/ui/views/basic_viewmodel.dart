import 'package:flutterdemo/app/locator.dart';
import 'package:flutterdemo/util/log_plugin.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BasicViewModel extends BaseViewModel with LogPlugin {
  final DialogService _dialogService = locator<DialogService>();
  final NavigationService navigationService = locator<NavigationService>();

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
}
