import 'package:flutter/material.dart';

import '../theme/colors.dart';

class LoadBalance extends StatelessWidget {
  const LoadBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: 160,
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          'assets/group-69.png',
        ),
        fit: BoxFit.fill,
      )),
      child: Text('ARsa'),
    );
  }
}
