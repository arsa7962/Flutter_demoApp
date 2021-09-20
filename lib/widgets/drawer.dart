import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../resources//strings.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: AppTheme.colors.purple,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/oval-2.png'),
                  radius: 32,
                ),
                SizedBox(height: 10),
                Opacity(
                  opacity: 0.64,
                  child: Text(
                    Strings.myPrepaid,
                    style: TextStyle(
                      color: AppTheme.colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Text(
                  Strings.id,
                  style: TextStyle(
                    color: AppTheme.colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          ListTile(
              title: Text(
                Strings.aboutGlobe,
                style: TextStyle(
                  color: AppTheme.colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
          ListTile(
              title: Text(
                Strings.payment,
                style: TextStyle(
                  color: AppTheme.colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}
