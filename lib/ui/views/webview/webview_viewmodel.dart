import '../basic_viewmodel.dart';

class WebViewViewModel extends BasicViewModel {
  String _title;

  String get title => _title;

  String _url;

  String get url => _url;

  void init(Map<String, dynamic> arguments) {
    _title = arguments['title'];
    _url = arguments['url'];
  }
}
