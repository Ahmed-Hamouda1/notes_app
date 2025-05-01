import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class EditNoteView extends StatelessWidget 
{
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body:  Padding
      (
        padding:  const EdgeInsets.all(15),
        child: Column
        (
          children: 
          [
            const SizedBox(height: 50,),
            const CustomAppBar(title: "Edit",icon: Icon(Icons.check),),
            const SizedBox(height: 20,),
            CustomTextFaild(hintText: "Title",pColor: Colors.lightBlue,),
            const SizedBox(height: 20,),
            CustomTextFaild(hintText: "Title",pColor: Colors.lightBlue,numOfLines: 5,),
          ],
        ),
      ),
    );  
  }
}