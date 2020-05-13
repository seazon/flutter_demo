import 'package:flutter/material.dart';
import 'package:flutterdemo/ui/views/tab/tab_layout_widget.dart';
import 'package:flutterdemo/ui/views/tab/tab_viewmodel.dart';
import 'package:flutterdemo/util/util_snackbar.dart';

import '../basic_view.dart';

class TabView extends BasicView<TabViewModel> {
  @override
  Widget builder(BuildContext context, TabViewModel model, Widget child) {
    return Scaffold(
        appBar: AppBar(
          title: Text("tab"),
          actions: <Widget>[
            Builder(
              builder: (context) => IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  SnackBarUtil.show(context, "search menu tapped");
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
            ),
            Icon(Icons.more_vert)
          ],
        ),
        body: TabLayout(
          model: model,
        ));
  }

  @override
  TabViewModel viewModelBuilder(BuildContext context) {
    return TabViewModel();
  }
}
