import 'package:flutter/material.dart';

import 'package:demo_app/core/models/latestPromo.dart';
import 'package:demo_app/theme/appTheme.dart';

class LatestPromo extends StatelessWidget {
  final Media data;
  LatestPromo(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 150,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(data.image), fit: BoxFit.fill),
      ),
      child: Padding(
        padding: EdgeInsets.fromLTRB(16, 24, 0, 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              data.icon,
              width: 20,
              height: 20,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              data.title,
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 38),
            Text(
              data.subTitle,
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 2,
            ),
            Text(
              data.amount,
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
