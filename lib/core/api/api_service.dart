import 'dart:convert';
import 'dart:io';

import 'package:flutterdemo/core/model/github_user.dart';
import 'package:flutterdemo/util/log_plugin.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@injectable
class ApiService with LogPlugin {
  Future<GithubUserResult> search(String keyword) async {
    http.Response response =
        await http.get("https://api.github.com/search/users?q=$keyword&page=1");
    if (response.statusCode == HttpStatus.ok) {
      d("response: ${response.body}");
      return GithubUserResult.fromJson(jsonDecode(response.body));
    } else {
      d("statusCode: ${response.statusCode}");
      return null;
    }
  }
}
