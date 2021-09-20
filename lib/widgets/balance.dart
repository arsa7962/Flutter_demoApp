import 'package:demo_app/widgets/planCard.dart';
import 'package:flutter/material.dart';

import './loadBalance.dart';
import './balanceCard.dart';
import '../theme/appTheme.dart';
import '../models/balance.dart';
import '../models/recommendedPlans.dart';
import '../resources/strings.dart';

class BalanceList extends StatelessWidget {
  final balanceList = [
    Balance(
        title: 'Data Balance',
        value: '300 MB',
        subtitle: 'of 12 GB',
        image: 'assets/group-67.png'),
    Balance(
        title: 'Data Balance',
        value: '300 MB',
        subtitle: 'of 12 GB',
        image: 'assets/group-67.png'),
  ];
  final plans = [
    Plan(
        id: 'GoUNLI350',
        title: '30 days UNLI to Globe',
        color: AppTheme.colors.warmBlue2),
    Plan(
        id: 'GoUNLI180',
        title: '15 days UNLI to Globe',
        color: AppTheme.colors.lightishBlue),
    Plan(
        id: 'GoUNLI350',
        title: '30 days UNLI to Globe',
        color: AppTheme.colors.warmBlue2),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.only(
          top: 32,
          bottom: 32,
        ),
        decoration: BoxDecoration(
            color: AppTheme.colors.ice_blue,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), topRight: Radius.circular(16))),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LoadBalance(),
                    SizedBox(
                      width: 6,
                    ),
                    Row(
                      children: [
                        ...balanceList.map((e) => BalanceCard(e)).toList()
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      Strings.recommended,
                      style: TextStyle(
                        fontSize: 12,
                        color: AppTheme.colors.greyishBrownThree,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      Strings.viewAll,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.colors.lightishBlue,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ...plans.map((e) => PlanCard(e)).toList(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
