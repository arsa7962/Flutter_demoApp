import 'package:flutter/material.dart';

class FlimCard extends StatelessWidget {
  final String img;
  FlimCard(this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: 140,
      height: 190,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(img),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
