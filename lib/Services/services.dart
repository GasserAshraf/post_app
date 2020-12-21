import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_app/models/CommentModel.dart';
import 'package:post_app/models/postsmodel.dart';
import 'package:post_app/models/users_model.dart';

class Services {
  static const PostsAPI = "https://jsonplaceholder.typicode.com/posts";

  static const useresAPI = "https://jsonplaceholder.typicode.com/users";
  List<PostModel> PostsList = [];
  List<CommentModel> CommentsList = [];
  List<UserModel> UsersList = [];

  Future<List<PostModel>> getPostsList() async {
    http.Response response = await http.get(PostsAPI);
    PostsList = (json.decode(response.body) as List)
        .map((item) => PostModel.fromJson(item))
        .toList();

    return PostsList;
  }

  Future<List<CommentModel>> getComments(String id) async {
    String commentsAPI = PostsAPI + '/$id/comments';
    http.Response response = await http.get(commentsAPI);
    CommentsList = (json.decode(response.body) as List)
        .map((item) => CommentModel.fromJson(item))
        .toList();

    return CommentsList;
  }

  Future<List<UserModel>> getListOfUsers() async {
    http.Response response = await http.get(useresAPI);
    UsersList = (json.decode(response.body) as List)
        .map((item) => UserModel.fromJson(item))
        .toList();

    return UsersList;
  }
}
