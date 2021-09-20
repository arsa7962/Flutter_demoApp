import 'package:flutter/material.dart';

class LifeStyle extends StatelessWidget {
  const LifeStyle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Center(child: Text('In lifeStyle')),
      ),
    );
  }
}
