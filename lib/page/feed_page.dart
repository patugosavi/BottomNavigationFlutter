import 'package:flutter/material.dart';

class FeedPage extends StatefulWidget{
  @override
  _FeedPageState createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage>{
  // int counter=0;

  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title: Text('Feed'),
    ),
    body: Center(
      child: Text('Feed',style: TextStyle(fontSize: 60),),
    ),
  ) ;
}

