class CommentModel {

  String name;
  String email;
  String body;

  CommentModel({this.name, this.email, this.body});

  CommentModel.fromJson(Map<String, dynamic> json)
      :
        email = json['email'],
        name = json['name'],
        body = json['body'];

}
