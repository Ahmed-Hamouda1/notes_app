import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget 
{
  const CustomSearchIcon({super.key});

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
      child: Icon(Icons.search),
    );
  }
}