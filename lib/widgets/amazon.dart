import 'package:flutter/material.dart';

import '../theme/appTheme.dart';
import '../resources/strings.dart';
import './netflixCard.dart';

class Amazon extends StatelessWidget {
  final data = [
    'assets/bitmap-23.png',
    'assets/bitmap-25.png',
    'assets/bitmap-23.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Strings.popularOn,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.colors.white,
                  ),
                ),
                SizedBox(
                  width: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Image.asset('assets/bitmap-13.png'),
                ),
              ],
            ),
            Text(
              Strings.viewAll,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: AppTheme.colors.lightishBlue,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 12,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: (data.map((e) => FlimCard(e))).toList()),
        ),
      ],
    );
  }
}
