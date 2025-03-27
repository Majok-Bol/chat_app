import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text('Chat  App',style: TextStyle(color: Colors.white,fontSize: 20),),centerTitle: true,backgroundColor: Colors.purple,),
      body:Align(
      alignment: Alignment.bottomCenter,
        // color: Colors.grey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(children: [
              Expanded(child:
              TextField(
                controller: chatController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Write your message...'
                ),
              ),
              ),
              SizedBox(width: 10,),
              SizedBox(child: ElevatedButton(onPressed:addChat,style: ElevatedButton.styleFrom(backgroundColor: Colors.green), child: Text('Send')),),
            ],),
            Padding(padding: EdgeInsets.all(10),),
            ],),



      ),
    );

  }
}