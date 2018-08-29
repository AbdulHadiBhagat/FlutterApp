import 'package:flutter/material.dart';
import 'package:flutter_app/Models/chatModel.dart';


class ChatScreen extends StatefulWidget {
  @override
  ChatScreenState createState() {
    return new ChatScreenState();
  }
}


class ChatScreenState extends State<ChatScreen> {

  List<ChatModel> tempList;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
         itemCount: list.length,
         itemBuilder: (context,i)=> Column(
           children: <Widget>[
             
             new Divider(
               height: 10.0,

             ),
             new ListTile(
               leading: new CircleAvatar(
                 foregroundColor: Theme.of(context).primaryColor,
                 backgroundColor: Colors.grey,
                 backgroundImage: new NetworkImage(list[i].avatarUrl),
               ),
               title: new Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   new Text(list[i].name,style: new TextStyle(fontWeight: FontWeight.bold),),
                   new Text(list[i].time,style: new TextStyle(color: Colors.grey,fontSize: 14.0),),

                 ],
                 
               ),
               onLongPress: (){
                 print(list[i].message);
               },
               subtitle: new Container(
                 padding: const EdgeInsets.only(top: 5.0),
                 child: new Text(list[i].message,style: new TextStyle(color: Colors.grey,fontSize: 15.0),),
               ),
             )
           ],
         ),
    );
  }
}