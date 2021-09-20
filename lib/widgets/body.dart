import 'package:flutter/material.dart';

import './accountDetails.dart';
import './balance.dart';
import './specialPromo.dart';
import './latestPromos.dart';
import './roamingPlans.dart';
import './rewards.dart';
import './offers.dart';
import './subscription.dart';
import '../theme/appTheme.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AccountDetails(),
          BalanceList(),
          SpecialPromo(),
          LatestPromos(),
          RoamingPlans(),
          Rewards(),
          Offers(),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            padding: EdgeInsets.all(20),
            child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(vertical: 16),
                  side: BorderSide(color: AppTheme.colors.black),
                ),
                onPressed: () {},
                child: Text(
                  'Find Out More',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppTheme.colors.black),
                )),
          ),
          Subscriptions(),
        ],
      ),
    );
  }
}
