import 'package:flutter/material.dart';

import 'package:demo_app/theme/appTheme.dart';
import '../core/models/card.dart';

class CustomCard extends StatelessWidget {
  final CardModel data;
  CustomCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(data.image), fit: BoxFit.fill),
          borderRadius: BorderRadius.all(Radius.circular(12))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 0.16,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.colors.white.withOpacity(0.68),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                data.subtitle,
                SizedBox(
                  height: 1,
                ),
                Text(
                  data.desc,
                  style: TextStyle(
                    fontSize: 12,
                    height: 1.42,
                    letterSpacing: -0.34,
                    color: AppTheme.colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 54,
              margin: EdgeInsets.only(top: 13),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.colors.black.withOpacity(0.3),
                      AppTheme.colors.black.withOpacity(0.1),
                    ]),
              ),
              child: TextButton(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Text(data.actionDesc),
                  ), Icon(Icons.chevron_right,size: 20,)],
                ),
                onPressed: () {},
                style: TextButton.styleFrom(
                  padding: EdgeInsets.only(left: 0),
                  primary: AppTheme.colors.white,
                  textStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.colors.white,
                    letterSpacing: -0.1,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
