import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:post_app/Services/services.dart';
import 'package:post_app/Widgets/User_Widget.dart';
import 'package:post_app/models/users_model.dart';

class UsersScreen extends StatefulWidget {
  @override
  _UsersScreenState createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final _service = Services();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: Center(
          child: FutureBuilder<List<UserModel>>(
              future: _service.getListOfUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) =>
                          UserWidget(context, index,snapshot.data[index]));
                } else {
                  return ModalProgressHUD(
                      inAsyncCall: true,
                      child: Container(
                          child: Center(child: Text("Loading....."))));
                }
              }
          )
      ),
    );
  }
}
