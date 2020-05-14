import 'dart:convert';
import 'dart:io';
import 'package:flutterdemo/core/database/database_helper.dart';
import 'package:flutterdemo/core/model/github_user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class GithubUserRepository {
  Future<GithubUserResult> search(String keyword) async {
    http.Response response =
        await http.get("https://api.github.com/search/users?q=$keyword&page=1");
    if (response.statusCode != HttpStatus.ok) {
      return GithubUserResult.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
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
