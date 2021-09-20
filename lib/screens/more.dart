import 'package:flutter/material.dart';

import '../theme/appTheme.dart';

class More extends StatelessWidget {
  const More({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: AppTheme.colors.warmBlue,
        child: Center(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Click me to go back !'))),
      ),
    );
  }
}
