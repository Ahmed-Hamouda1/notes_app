import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget 
{
  const CustomAppBar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) 
  {
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: 
      [
        Text(title,style: TextStyle(fontSize: 30,color: Colors.white),),
        CustomSearchIcon()

      ],
    );
  }
}