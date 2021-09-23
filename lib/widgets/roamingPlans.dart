import 'package:flutter/material.dart';

import 'package:demo_app/widgets/card.dart';
import 'package:demo_app/core/models/card.dart';
import 'package:demo_app/theme/appTheme.dart';
import 'package:demo_app/widgets/title.dart';
import '../resources/strings.dart';

class RoamingPlans extends StatelessWidget {
  final cardData = CardModel(
      title: 'GoSakto',
      subtitle: ShaderText('Planing for a foreign trip?', AppTheme.colors.whiteShade,
          AppTheme.colors.white),
      desc: 'Roam worry free!',
      actionDesc: 'Explore Roaming Packs',
      image: 'assets/group-37.png');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 32, 24, 12),
          child: ShaderText(Strings.roamingPlans, AppTheme.colors.sapphire,
              AppTheme.colors.lavenderPink),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomCard(cardData),
        ),
      ],
    );
  }
}
