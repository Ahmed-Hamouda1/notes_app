import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class AddNoteView extends StatelessWidget 
{
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView
      (
        child: Column
        (
          children: 
          [
            CustomTextFaild(hintText: "title", pColor: Colors.lightBlue),
            CustomTextFaild
            (
              hintText: "description", 
              pColor: Colors.lightBlue,
              maxLines: 5,
            ),
            SizedBox(height: 30,),
            CustomButton
            (
              title: "Add",
              color: Colors.blue,
              titleColor:Colors.black
            ),      
          ],
        ),
      ),
    );
  }
}