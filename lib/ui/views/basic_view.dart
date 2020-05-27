import 'package:flutter/widgets.dart';
import 'package:flutterdemo/util/log_plugin.dart';
import 'package:stacked/stacked.dart';

abstract class BasicView<T extends ChangeNotifier>
    extends ViewModelBuilderWidget<T> with LogPlugin {}
