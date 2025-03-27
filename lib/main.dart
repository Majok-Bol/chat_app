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
class ChatListState extends State<ChatList>{
  final List<String>chats=[];
  final TextEditingController chatController=TextEditingController();
  void addChat(){
    setState(() {
      //check that text input field is not empty
      //if not empty
      //app text input to chat list
      if(chatController.text.isNotEmpty){
        chats.add(chatController.text);
        chatController.clear();
      }
    });
  }
  void clearChat(){
    setState(() {
      chats.clear();
    });
  }
  @override
  Widget build(BuildContext){
    return Scaffold(
      body: Container(
        padding:EdgeInsets.all(10),
        margin: EdgeInsets.all(10),
        color: Colors.grey,
      ),
    );

  }
}