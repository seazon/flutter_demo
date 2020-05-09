import 'package:flutter/cupertino.dart';

import 'package:flutterdemo/model/github_user.dart';
import 'package:flutterdemo/repository/user_repository.dart';

class GithubUserListViewModel extends ChangeNotifier {
  GithubUserRepository repository = GithubUserRepository();
  List<GithubUserResultItem> users = List<GithubUserResultItem>();
  bool isLoading = false;

  Future<void> search(String keyword) async {
    isLoading = true;
    notifyListeners();

    final results = await repository.search(keyword);
    users = results.items;
    print(users);
    isLoading = false;
    notifyListeners();
  }
}
