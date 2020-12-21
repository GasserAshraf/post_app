import 'package:flutter/material.dart';

Widget CommentWidget(context, String name, String email,String body) {
  double width = MediaQuery.of(context).size.width;
  double height = MediaQuery.of(context).size.height;
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
                            "${body}",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 13),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${email}',
                            textAlign: TextAlign.left,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '${email}',
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
        ],
      ),
    ),
  );
}
