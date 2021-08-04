import 'package:flutter/material.dart';
import 'package:learn_anywhere_app/colors.dart';

class MainButton extends StatelessWidget {
  const MainButton({ Key? key, required this.action, required this.label }) : super(key: key);

  final void Function() action;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.0),
        color: primaryColor
      ),
      child: TextButton(
        child: Text(
          label,
          style: TextStyle(color: whiteInk, fontSize: 16.0),
        ),
        onPressed: action,  
      ),
    );
  }
}