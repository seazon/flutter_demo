import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutterdemo/model/github_user.dart';
import 'package:flutterdemo/viewmodel/github_user_list_viewmodel.dart';

class GithubUserListPage extends StatefulWidget {
  @override
  _UserListPageState createState() => _UserListPageState();
}

class _UserListPageState extends State<GithubUserListPage> {
  final TextEditingController _controller = TextEditingController();
  GithubUserListViewModel vm;

  @override
  void initState() {
    super.initState();
    // you can uncomment this to get all batman movies when the page is loaded
    //Provider.of<UserListViewModel>(context, listen: false).fetchMovies("batman");
  }

  @override
  Widget build(BuildContext context) {
    print("start build ");
    vm = Provider.of<GithubUserListViewModel>(context);
    return Scaffold(
        appBar: AppBar(title: Text("Search Github User")),
        body: Container(
            padding: EdgeInsets.all(10),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  controller: _controller,
                  onSubmitted: (value) {
                    if (value.isNotEmpty) {
                      vm.search(value);
                      _controller.clear();
                    }
                  },
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(color: Colors.white),
                      border: InputBorder.none),
                ),
              ),
              Offstage(
                offstage: !vm.isLoading,
                child: CircularProgressIndicator(),
              ),
              Expanded(child: _UserList(users: vm.users))
            ])));
  }
}

class _UserList extends StatelessWidget {
  final List<GithubUserResultItem> users;

  _UserList({this.users});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.users.length,
      itemBuilder: (context, index) {
        final user = this.users[index];

        return ListTile(
          contentPadding: EdgeInsets.all(10),
          leading: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage(user.avatar_url)),
                borderRadius: BorderRadius.circular(6)),
            width: 50,
            height: 100,
          ),
          title: Text(user.login),
        );
      },
    );
  }
}
