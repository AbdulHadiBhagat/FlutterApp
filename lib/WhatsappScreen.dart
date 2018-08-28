import 'package:flutter/material.dart';
import 'Tabs/camraScreen.dart';
import 'Tabs/chatScreen.dart';
import 'Tabs/statusScreen.dart';
import 'Tabs/callsScreen.dart';

class WhatsAppHome extends StatefulWidget {
  var cameras;
  WhatsAppHome();

  @override
  _WhatsAppHomeState createState() => new _WhatsAppHomeState();
}

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
    
    return new Scaffold(
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
          new Icon(Icons.search),
          new Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          new Icon(Icons.more_vert)
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
      floatingActionButton: new FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed:() {
                    Scaffold.of(context).showSnackBar(
                          new SnackBar(
                            content: new Text("Added to favorite"),
                            action: new SnackBarAction(
                              label: "UNDO",
                              onPressed: () => Scaffold.of(context).hideCurrentSnackBar(),
                            ),
                          ),
                        );
                        },
      ),

    );
    
  }
      }