import 'package:flutter/material.dart';

import '../models/balance.dart';
import '../theme/appTheme.dart';

class LoadBalance extends StatelessWidget {
  final balance = Balance(
      title: 'Load Balance',
      value: 'P 1675.00',
      subtitle: 'Valid till 26 Dec',
      image: 'assets/group-65.png');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      padding: EdgeInsets.fromLTRB(16, 16, 16, 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [AppTheme.colors.warmBlue, AppTheme.colors.royalBlue]),
          image: DecorationImage(
            image: AssetImage(
              'assets/group-69.png',
            ),
            fit: BoxFit.fill,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(balance.image),
          SizedBox(
            height: 24,
          ),
          Text(
            balance.title,
            style: TextStyle(
                color: AppTheme.colors.white.withOpacity(0.8),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 4,
          ),
          Text(balance.value,
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.colors.white.withOpacity(0.8),
                  letterSpacing: -0.95)),
          SizedBox(
            height: 30,
          ),
          Text(
            balance.subtitle,
            style: TextStyle(
                color: AppTheme.colors.white.withOpacity(0.8),
                fontSize: 12,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
