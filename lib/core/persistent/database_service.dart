import 'package:flutterdemo/core/model/github_user.dart';
import 'package:injectable/injectable.dart';

import 'database_helper.dart';

@injectable
class DatabaseService {
  final db = new DatabaseHelper();

  Future<List<GithubUserResultItem>> getAllUsers() async {
    var dd = await db.getAllUsers();
    return dd.map((e) => GithubUserResultItem.fromJson(e)).toList();
  }

  Future<void> saveUsers(List<GithubUserResultItem> users) async {
    db.saveUsers(users);
  }
}
