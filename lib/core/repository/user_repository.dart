import 'package:flutterdemo/app/locator.dart';
import 'package:flutterdemo/core/api/api_service.dart';
import 'package:flutterdemo/core/database/database_helper.dart';
import 'package:flutterdemo/core/model/github_user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GithubUserRepository {
  final ApiService _apiService = locator<ApiService>();

  Future<GithubUserResult> search(String keyword) async {
    return _apiService.search(keyword);
  }

  Future<List<GithubUserResultItem>> getAllUsers() async {
    var db = new DatabaseHelper();
    var dd = await db.getAllUsers();
    return dd.map((e) => GithubUserResultItem.fromJson(e)).toList();
  }

  Future<void> saveUsers(List<GithubUserResultItem> users) async {
    var db = new DatabaseHelper();
    db.saveUsers(users);
  }

  Future<int> incrementCounter() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    int counter = (sp.getInt("counter") ?? 0) + 1;
    await sp.setInt("counter", counter);
    return counter;
  }
}
