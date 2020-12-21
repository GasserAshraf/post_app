import 'package:flutter/material.dart';
import 'package:post_app/Screens/UsersScreen.dart';
import 'package:post_app/Screens/home_screen.dart';
import 'package:post_app/Screens/setting_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentTabIndex = 0;
  PostsScreen postsScreen;
  UsersScreen commentsScreen;
  Settings settings;
  List<Widget> Screenses;
  Widget currentScreen;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postsScreen = PostsScreen();
    commentsScreen = UsersScreen();
    settings = Settings();
    Screenses = [postsScreen, commentsScreen, settings];
    currentScreen = postsScreen;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            currentTabIndex = index;
            currentScreen = Screenses[index];
          });
        },
        currentIndex: currentTabIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.people), title: Text("Useres")),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text("Settings")),
        ],
      ),
      body: currentScreen,
    );
  }
}
