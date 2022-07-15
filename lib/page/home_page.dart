import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  // int counter=0;

  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      title: Text('Home'),
      backgroundColor: Colors.blue,
    ),
    body: Center(
      child: Text('Home',style: TextStyle(fontSize: 60),),
    ),
  ) ;
}

