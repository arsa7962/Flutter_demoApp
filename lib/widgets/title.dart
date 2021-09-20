import 'package:demo_app/theme/appTheme.dart';
import 'package:flutter/material.dart';

class ShaderText extends StatelessWidget {
  final String title;
  final Color startColor;
  final Color endColor;
  ShaderText(this.title, this.startColor, this.endColor);
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          startColor,
          endColor,
        ],
        tileMode: TileMode.clamp,
      ).createShader(bounds),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppTheme.colors.white,
        ),
      ),
    );
  }
}
