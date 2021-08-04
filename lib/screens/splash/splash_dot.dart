import "package:flutter/material.dart";
import 'package:learn_anywhere_app/colors.dart';

class SplashDot extends StatelessWidget {
  const SplashDot({
    Key? key, required this.isSelected,
  }) : super(key: key);

  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6.0),
      width: isSelected ? 16.0 : 6.0,
      height: 6.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(3.0), color: isSelected ? secondaryColor : Color(0xFFD5D4D4),),
    );
  }
}