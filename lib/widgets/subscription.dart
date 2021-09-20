import 'package:flutter/material.dart';

import 'package:demo_app/widgets/title.dart';
import '../theme/appTheme.dart';
import '../resources/strings.dart';
import './netflix.dart';
import './amazon.dart';
import './ottPlatforms.dart';

class Subscriptions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 36),
      padding: EdgeInsets.fromLTRB(20, 40, 10, 32),
      decoration: BoxDecoration(
        color: AppTheme.colors.black,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            Strings.subscription,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppTheme.colors.white,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 250,
              child: ShaderText(
                Strings.subscrip,
                AppTheme.colors.paleSalmon,
                AppTheme.colors.cornflower,
              )),
          SizedBox(
            height: 20,
          ),
          NetFlix(),
          SizedBox(
            height: 32,
          ),
          Amazon(),
          SizedBox(
            height: 30.3,
          ),
          Ott(),
        ],
      ),
    );
  }
}
