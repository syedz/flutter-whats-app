import 'package:flutter/material.dart';
import 'screens/call.dart';
import 'screens/camera.dart';
import 'screens/chat.dart';
import 'screens/status.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What's App",
      theme: new ThemeData(
        primaryColor: new Color(0xff075E54),
        accentColor: new Color(0xff25D366),
      ),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
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
            child: new Icon(Icons.message),
            onPressed: () => print('open chats'),
          ),
        ),
      ),
    );
  }
}
