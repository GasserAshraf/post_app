import 'package:flutter/material.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:post_app/Services/services.dart';
import 'package:post_app/Widgets/Comment_Widget.dart';
import 'package:post_app/models/CommentModel.dart';

class CommentPages extends StatefulWidget {
  final String idController;//if you have multiple values add here
  CommentPages(this.idController, {Key key}): super(key: key);

  @override
  _CommentPagesState createState() => _CommentPagesState();
}

class _CommentPagesState extends State<CommentPages> {
  final _service = Services();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Comments"),
      ),
      body: Center(
          child: FutureBuilder<List<CommentModel>>(
              future: _service.getComments(widget.idController),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (context, index) => CommentWidget(
                          context,
                          snapshot.data[index].name,
                          snapshot.data[index].email,
                          snapshot.data[index].body));
                } else {
                  return ModalProgressHUD(
                      inAsyncCall: true,
                      child: Container(
                          child: Center(child: Text("Loading....."))));
                }
              })),
    );
  }
}
