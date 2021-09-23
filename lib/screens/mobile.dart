import 'package:flutter/material.dart';

import '../widgets/accountDetails.dart';
import '../widgets/specialPromo.dart';
import '../widgets/latestPromos.dart';
import '../widgets/roamingPlans.dart';
import '../widgets/rewards.dart';
import '../widgets/offers.dart';
import '../widgets/subscription.dart';
import '../container/balance_container.dart';
import '../theme/appTheme.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AccountDetails(),
            BalanceContainer(),
            SpecialPromo(),
            LatestPromos(),
            RoamingPlans(),
            Rewards(),
            Offers(),
            Container(
              width: double.infinity,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
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
      ),
    );
  }
}
