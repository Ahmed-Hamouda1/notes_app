import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget 
{
  final Icon icon;
  const CustomIcon({super.key, required this.icon});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      height: 40,
      width: 40,
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withOpacity(0.3)
      ),
      child: icon,
    );
  }
}