import 'dart:convert';
import 'dart:io';

import 'package:flutterdemo/core/model/github_user.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@injectable
class ApiService {
  Future<GithubUserResult> search(String keyword) async {
    http.Response response =
        await http.get("https://api.github.com/search/users?q=$keyword&page=1");
    if (response.statusCode != HttpStatus.ok) {
      return GithubUserResult.fromJson(jsonDecode(response.body));
    } else {
      return null;
    }
  }
}
