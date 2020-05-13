import 'package:flutter/widgets.dart';
import 'package:stacked/stacked.dart';

abstract class BasicView<T extends ChangeNotifier>
    extends ViewModelBuilderWidget<T> {}
