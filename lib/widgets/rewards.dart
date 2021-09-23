import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:demo_app/theme/appTheme.dart';
import 'package:demo_app/widgets/title.dart';
import '../core/models/globalRewards.dart';
import '../resources/strings.dart';

class Rewards extends StatelessWidget {
  final data = GlobalReward(
      title: 'Your Reward Points',
      value: '7250 Pts',
      image: 'assets/group-41.png');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 36, 24, 12),
          child: ShaderText(Strings.globalRewards, AppTheme.colors.sapphire,
              AppTheme.colors.lavenderPink),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 20),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppTheme.colors.tangerine,
                  AppTheme.colors.mango,
                ]),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data.title,
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 11,
                        letterSpacing: 0.12,
                        color: AppTheme.colors.white.withOpacity(0.9)),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(data.value,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          letterSpacing: -0.69,
                          color: AppTheme.colors.white)),
                ],
              )),
              Image.asset(data.image),
            ],
          ),
        ),
      ],
    );
  }
}
