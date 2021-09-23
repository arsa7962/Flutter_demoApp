import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../resources/strings.dart';
import './offerCard.dart';
import '../core/models/offer.dart';

class Offers extends StatelessWidget {
  final List<Offer> data = [
    Offer(
        titleImage: 'assets/group-38.png',
        points: '1000 Pts',
        offerDetail: 'P 500 OFF on Shoes',
        bgImage: 'assets/group-51.png'),
    Offer(
        titleImage: 'assets/group-33.png',
        points: '1000 Pts',
        offerDetail: 'Get Hair Spa & Styling',
        bgImage: 'assets/group-53.png'),
    Offer(
        titleImage: 'assets/group-38.png',
        points: '1000 Pts',
        offerDetail: 'P 500 OFF on Shoes',
        bgImage: 'assets/group-51.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 20, 24, 12),
          child: Text(
            Strings.offerDesc,
            style: TextStyle(
              fontSize: 15,
              color: AppTheme.colors.grey,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: data.map((e) => OfferCard(e)).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
