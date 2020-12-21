class PostModel {
  String title;
  String id;
  String body;
  String userId;

  PostModel({this.id, this.title, this.body, this.userId});

  PostModel.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        userId = json['userId'].toString(),
        title = json['title'],
        body = json['body'];

}
