import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:post_app/Services/services.dart';
import 'package:post_app/Widgets/Card_widget.dart';
import 'package:post_app/models/postsmodel.dart';

class PostsScreen extends StatefulWidget {
  @override
  _PostsScreenState createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {
  final _service = Services();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Posts"),
      ),
      body: Center(
          child: FutureBuilder<List<PostModel>>(
              future: _service.getPostsList(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    itemCount: snapshot.data.length,
                      itemBuilder: (context, index) =>
                          CardWidget(context, index,snapshot.data[index].title,snapshot.data[index].body));
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
