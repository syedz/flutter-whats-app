import 'package:flutter/material.dart';
import 'screens/call.dart';
import 'screens/camera.dart';
import 'screens/chat.dart';
import 'screens/status.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("WhatsApp"),
          elevation: 0.7,
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(icon: new Icon(Icons.camera_alt)),
              new Tab(text: 'CHATS'),
              new Tab(text: 'STATUS'),
              new Tab(text: 'CALLS'),
            ],
          ),
          actions: <Widget>[
            new Icon(Icons.search),
            new Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.0),
            ),
            new Icon(Icons.more_vert),
          ],
        ),
        body: new TabBarView(
          children: <Widget>[
            new CameraScreen(),
            new ChatScreen(),
            new StatusScreen(),
            new CallScreen(),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(
            Icons.message,
            color: Colors.white,
          ),
          onPressed: () => print('open chats'),
        ),
      ),
    );
  }
}
