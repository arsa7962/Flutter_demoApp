import 'package:demo_app/theme/appTheme.dart';
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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int indexValue = 0;
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
              style: TextStyle(color: AppTheme.colors.white),
            ),
            child: IconButton(
              color: AppTheme.colors.black,
              onPressed: () {},
              iconSize: 33,
              icon: Icon(Icons.notifications_none_outlined),
            ),
            position: BadgePosition.topEnd(top: 4, end: 3),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/oval-2.png'),
              radius: 20,
            ),
          ),
        ],
      ),
      backgroundColor: Theme.of(context).backgroundColor,
      drawer: MenuDrawer(),
      body: Body(),
      bottomNavigationBar: SafeArea(
        child: BottomNavigationBar(
          currentIndex: indexValue,
          onTap: (index) => setState(() => indexValue = index),
          selectedItemColor: AppTheme.colors.warmBlue2,
          unselectedItemColor: AppTheme.colors.black,
          iconSize: 28,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.phone_android_outlined),
              label: 'Mobile',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wine_bar_outlined),
              label: 'LifeStyle',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wallet_membership_outlined),
              label: 'Wallet',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.more_vert_outlined),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
