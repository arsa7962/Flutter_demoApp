import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../models/ottSubcription.dart';

class OttCard extends StatelessWidget {
  final OttSubscription data;
  OttCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 145,
      height: 190,
      padding: const EdgeInsets.fromLTRB(16, 31, 16, 14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: data.bgcolor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            data.headImage,
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            data.subscribe,
            style: TextStyle(
              color: AppTheme.colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            data.amount,
            style: TextStyle(
              color: AppTheme.colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
