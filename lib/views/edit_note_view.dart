import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class EditNoteView extends StatelessWidget 
{
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Padding
      (
        padding: const EdgeInsets.all(20),
        child: Column
        (
          children: 
          [
            const SizedBox(height: 20,),
            const CustomAppBar(title: "Edit Note",icon: Icon(Icons.done),),
            const SizedBox(height: 20,),
            CustomTextFaild(hintText: 'title', pColor: KPColor,),
            CustomTextFaild(hintText: 'description', pColor: KPColor,maxLines: 5,)
          ],
        ),
      ),
    );
  }
}