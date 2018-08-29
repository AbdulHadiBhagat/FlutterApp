import 'package:flutter/material.dart';
import 'Tabs/camraScreen.dart';
import 'Tabs/chatScreen.dart';
import 'Tabs/statusScreen.dart';
import 'Tabs/callsScreen.dart';
import 'package:flutter_app/Models/chatModel.dart';


class WhatsAppHome extends StatefulWidget {
  
  WhatsAppHome();

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}
enum  testEnum  {A,B}
class _WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }
  
  @override
  Widget build(BuildContext context) {
    
    final key = new GlobalKey<ScaffoldState>();
    return new Scaffold(
      key: key,
      appBar: new AppBar(
        title: new Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(
              text: "STATUS",
            ),
            new Tab(
              text: "CALLS",
            ),
          ],
        ),

        actions: <Widget>[
          // new TextField(
          //   onChanged: (String text){
             
          //                  tList = [];
          //       for(int i = 0 ; i < list.length;i++)
          //       {
          //         if(list[i].name.startsWith(text)){
          //           tList.add(list[i]);
          //         }
          //       }   
                         
                
          //   },
          //   onSubmitted: (String text){
                 
          //                  tList = [];
          //       for(int i = 0 ; i < list.length;i++)
          //       {
          //         if(list[i].name.startsWith(text)){
          //           tList.add(list[i]);
          //         }
          //       }   
                           
          //   },
          // ),
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new PopupMenuButton(
            itemBuilder: (BuildContext context){
              return <PopupMenuEntry<testEnum>>[
                  new PopupMenuItem(
                    child: new FlatButton(
                      child: new Text('Profile'),
                      onPressed: (){
                        print('Pressed'); 
                      },
                    ),
                  ),
                  new PopupMenuItem(
                    child: new FlatButton(
                      child: new Text('Logout'),
                      onPressed: (){
                        print('Pressed'); 
                      },
                    ),
                  )
              ];
            },
            icon: new Icon(Icons.more_vert),
          )
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new CameraScreen(),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new Builder(
        builder: (BuildContext context){
          return new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed:() {
          key.currentState.showSnackBar(new SnackBar(
                content: new Text("Not implemented yet...",style: new TextStyle(fontSize: 14.0),),
              ));
          // print("pressed");
                   
                        },
      );
        }
          ),
        
      );

  
    
  }
    }


      