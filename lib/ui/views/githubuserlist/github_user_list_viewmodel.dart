import 'package:flutterdemo/core/model/github_user.dart';
import 'package:flutterdemo/core/repository/user_repository.dart';

import '../basic_viewmodel.dart';

class GithubUserListViewModel extends BasicViewModel {
  GithubUserRepository repository = GithubUserRepository();
  List<GithubUserResultItem> users = List<GithubUserResultItem>();
  String keyword = "";
  bool isLoading = false;

  Future<void> search(String keyword) async {
    this.keyword = keyword;
    users.clear();
    isLoading = true;
    notifyListeners();

    final results = await repository.search(keyword);
    if (results == null) {
      print("search results = null");
      print("get from database");
      users = await repository.getAllUsers();
      print(users);
    } else {
      users = results.items;
      repository.saveUsers(users);
      print(users);
    }
    isLoading = false;
    notifyListeners();
  }

  Future<void> refresh() async {
    search(keyword);
    return;
  }
}
