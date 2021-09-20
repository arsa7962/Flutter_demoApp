import 'package:flutter/material.dart';

import '../models/recommendedPlans.dart';
import '../theme/appTheme.dart';

class PlanCard extends StatelessWidget {
  final Plan data;
  PlanCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 4),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: data.color),
      child: Column( crossAxisAlignment: CrossAxisAlignment.start,children: [
        Text(
          data.id,
          style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 9,
              color: AppTheme.colors.white.withOpacity(0.8)),
        ),
        Text(
          data.title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12,
            color: AppTheme.colors.white,
          ),
        ),
      ]),
    );
  }
}
