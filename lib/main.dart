import 'package:bottom_navigation/page/chat_page.dart';
import 'package:bottom_navigation/page/feed_page.dart';
import 'package:bottom_navigation/page/home_page.dart';
import 'package:bottom_navigation/page/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MainPage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  final screens=[
    HomePage(),
    FeedPage(),
    ChatPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context)=>Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      //   centerTitle: true,
      // ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        iconSize: 30,
        // selectedFontSize: 25,
        // unselectedFontSize: 16,
        // showSelectedLabels: false,
        // showUnselectedLabels: false,
        currentIndex: currentIndex,
        onTap: (index)=>setState(()=>currentIndex=index),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
            // backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
            // backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            // backgroundColor: Colors.green,
          ),
        ],
      ),
     );
}
