import 'package:flutter/material.dart';
import 'package:post_app/models/users_model.dart';


class UserPage extends StatefulWidget {

  final UserModel UserController;//if you have multiple values add here
  UserPage(this.UserController, {Key key}): super(key: key);


  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text( "User info"),
      ),
      body: Center(
        child: Card(
          child: Container(
            height: MediaQuery.of(context).size.height*0.4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("User id :  ${widget.UserController.id}",style: TextStyle(fontSize: 15),),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Text("User name :  ${widget.UserController.username}",style: TextStyle(fontSize: 15)),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Text("Name :  ${widget.UserController.name}",style: TextStyle(fontSize: 15)),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Text("User Phone :  ${widget.UserController.phone}",style: TextStyle(fontSize: 15)),
                SizedBox(height:MediaQuery.of(context).size.height*0.01 ,),
                Text("User email :  ${widget.UserController.email}",style: TextStyle(fontSize: 15)),

              ],
            ),
          ),

        ),
      ),
    );
  }
}
