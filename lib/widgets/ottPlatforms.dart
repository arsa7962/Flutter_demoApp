import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../resources/strings.dart';
import '../models/ottSubcription.dart';
import './ottCard.dart';

class Ott extends StatelessWidget {
  final data = [
    OttSubscription(
        headImage: 'assets/bitmap-15.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppTheme.colors.grapePurple),
    OttSubscription(
        headImage: 'assets/bitmap-17.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppTheme.colors.redBrown),
    OttSubscription(
        headImage: 'assets/bitmap-17.png',
        subscribe: 'Subscribe for',
        amount: 'P 129.00/m',
        bgcolor: AppTheme.colors.lightishBlue),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            Strings.suggestions,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: AppTheme.colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12, bottom: 20),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: data.map((e) => OttCard(e)).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
