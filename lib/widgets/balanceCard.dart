import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../models/balance.dart';

class BalanceCard extends StatelessWidget {
  final Balance data;
  BalanceCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: AppTheme.colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(data.image),
          SizedBox(
            height: 28,
          ),
          Text(data.title),
          SizedBox(
            height: 2,
          ),
          Text(data.value),
          SizedBox(
            height: 12,
          ),
          Text(data.subtitle),
        ],
      ),
    );
  }
}
