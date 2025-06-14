import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget 
{
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;

  @override
  Widget build(BuildContext context) 
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: 
      [
        Text(title,style: TextStyle(fontSize: 30),),
        CustomIcon(icon: icon,),
      ],
    );
  }
}