class UserModel {
  String id;
  String name;
  String username;
  String email;
  String phone;


  UserModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.username});

  UserModel.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        email = json['email'],
        name = json['name'],
        phone = json['phone'],
        username = json['username'];
}
