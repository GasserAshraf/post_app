import 'package:flutter/material.dart';
import 'package:post_app/Services/services.dart';
import 'package:post_app/models/users_model.dart';
import 'package:post_app/pages/user_page.dart';

Widget UserWidget(context, int index,UserModel user) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
  final _service = Services();
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      color: Colors.white,
      elevation: 0.0,
      child: Stack(
        children: [
          Container(
            width: width,
            height: height * 0.18,
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: Container(
              width: width * 0.58,
              child: Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Container(
                    height: height * 0.18,
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "${user.username}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${user.name}',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                      ],
                    )),
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => UserPage(user)));
                  },
                  child: Text("more info"),
                  color: Colors.grey[200],
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0))))
        ],
      ),
    ),
  );
}
