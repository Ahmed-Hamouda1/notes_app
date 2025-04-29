import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class CustomBottomSheet extends StatelessWidget 
{
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column
      (
        children: 
        [
          SizedBox(height: 20,),
          CustomTextFaild
          (
            hintText: "Title", 
            pColor: Colors.lightBlueAccent,
          ),
          CustomTextFaild(hintText: "Sub-title", pColor: Colors.lightBlueAccent)
        ],
      ),
    );
  }
}