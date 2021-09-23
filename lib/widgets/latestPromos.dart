import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../resources/strings.dart';
import '../core/models/latestPromo.dart';
import '../widgets/latestPromoCard.dart';
import '../widgets/title.dart';

class LatestPromos extends StatelessWidget {
  final data = [
    Media(
      icon: 'assets/bitmap-4.png',
      title: 'Spotify Premium',
      subTitle: 'Subscribe for',
      amount: 'P 129.00',
      image: 'assets/group-43.png',
    ),
    Media(
      icon: 'assets/bitmap-6.png',
      title: 'Facebook Surf',
      subTitle: 'Get pack for',
      amount: 'P 50.00',
      image: 'assets/group-45.png',
    ),
    Media(
      icon: 'assets/bitmap-8.png',
      title: 'Insta Surf',
      subTitle: 'Subscribe for',
      amount: 'P 129.00',
      image: 'assets/group-43.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 40, 12, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ShaderText(Strings.latestPromos, AppTheme.colors.sapphire,
                  AppTheme.colors.lavenderPink),
              TextButton(
                onPressed: () {},
                child: Text(
                  Strings.viewAll,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: AppTheme.colors.lightishBlue,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [...data.map((e) => LatestPromo(e)).toList()],
            ),
          ),
        )
      ],
    );
  }
}
