import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

import './widgets/drawer.dart';
import './widgets/body.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      home: HomePage(),
      theme: ThemeData(backgroundColor: Colors.white),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  Widget _openDrawer() {
    return Builder(
        builder: (BuildContext context) => TextButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              child: Image.asset(
                'assets/menu-icon-2.png',
              ),
              onLongPress: () => Tooltip(
                  message:
                      MaterialLocalizations.of(context).openAppDrawerTooltip),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).backgroundColor,
        elevation: 0.0,
        leading: _openDrawer(),
        title: Text(
          'My Appbar',
        ),
        actions: [
          Badge(
            badgeContent: Text(
              '3',
              style: TextStyle(color: Theme.of(context).backgroundColor),
            ),
            child: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 22,
            ),
            position: BadgePosition.topEnd(top: 8, end: -5),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child:
                CircleAvatar(backgroundImage: AssetImage('assets/oval-2.png')),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: MenuDrawer(),
      body: Body(),
    );
  }
}
