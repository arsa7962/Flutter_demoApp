import 'package:flutter/material.dart';

import 'package:demo_app/widgets/card.dart';
import 'package:demo_app/models/card.dart';
import 'package:demo_app/theme/appTheme.dart';
import 'package:demo_app/widgets/title.dart';
import '../resources/strings.dart';

class SpecialPromo extends StatelessWidget {
  final cardData = CardModel(
      title: 'GoSakto',
      subtitle: ShaderText('Create What Matters', AppTheme.colors.white,
          AppTheme.colors.pinkShade),
      desc: 'Promo that’s all you! ',
      actionDesc: 'Create your own Promo',
      image: 'assets/group-29.png');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(24, 32, 24, 12),
          child: ShaderText(Strings.specialPromos, AppTheme.colors.sapphire,
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
