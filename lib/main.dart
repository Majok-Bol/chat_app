import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: ChatList(),
    );
  }
}
class ChatList extends StatefulWidget{
  @override
  ChatListState createState()=>ChatListState();
}