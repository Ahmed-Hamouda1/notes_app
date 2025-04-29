
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget 
{
  final String title;
  final Color backgroundColor;
  final Color titleColor;
  CustomButton
  (
    {
      super.key, required this.title, this.onTap,required this.backgroundColor,required this.titleColor
    }
  );
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    (
      onTap: onTap,
      child: Container
      (
        margin: const EdgeInsets.symmetric(vertical: 10),
        width: double.infinity,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration
        (
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10)
        ),
        child:Text
        (
          title,
          style: TextStyle
          (
            color: titleColor,
            fontWeight: FontWeight.bold,
            fontSize: 15
          ),
        ),
      ),
    );
  }
}
