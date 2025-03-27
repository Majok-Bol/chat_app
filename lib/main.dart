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
      body:Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(child:ListView.builder(
            itemCount: chats.length,

              itemBuilder:(context,index){
            return Align(
              alignment: Alignment.topRight,
              child: Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(chats[index],style: TextStyle(color: Colors.black),),
              ),

            );

          })),
          Padding(padding: EdgeInsets.all(25),child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(child: TextField(
                controller: chatController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                  labelText: 'Message',
                  // hintText: 'Message'
                ),
              )),
              SizedBox(width: 20,),
              SizedBox(child: ElevatedButton(onPressed: addChat, style:ElevatedButton.styleFrom(backgroundColor: Colors.green),child: Text('Send')),)
            ],
          ),)
        ],
      ),
    );

  }
}