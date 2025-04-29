import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class CustomBottomSheet extends StatelessWidget 
{
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return SingleChildScrollView
    (
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column
        (
          children: 
          [
            const SizedBox(height: 20,),
            CustomTextFaild
            (
              hintText: "Title", 
              pColor: Colors.lightBlueAccent,
            ),
            CustomTextFaild
            (
              hintText: "content", 
              pColor: Colors.lightBlueAccent,
              numOfLines: 5,
              
            ),
            const SizedBox(height: 50,),
            CustomButton(title: "Add", backgroundColor: Colors.lightBlueAccent, titleColor: Colors.black)
          ],
        ),
      ),
    );
  }
}