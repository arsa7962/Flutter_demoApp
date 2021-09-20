import 'package:demo_app/theme/appTheme.dart';
import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../models/offer.dart';

class OfferCard extends StatelessWidget {
  final Offer data;
  OfferCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(data.bgImage),
        fit: BoxFit.fill,
      )),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 20, 16, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(
              data.titleImage,
              width: 64,
              height: 28,
            ),
            SizedBox(
              height: 29,
            ),
            Text(
              data.points,
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 27,
            ),
            Text(
              data.offerDetail,
              style: TextStyle(
                color: AppTheme.colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
