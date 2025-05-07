import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class CustomBottomSheet extends StatelessWidget 
{
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const SingleChildScrollView
    (
      child: Padding
      (
        padding:  EdgeInsets.all(10),
        child: AddNoteSheet(),
      ),
    );
  }
}

class AddNoteSheet extends StatefulWidget 
{
  const AddNoteSheet({
    super.key,
  });

  @override
  State<AddNoteSheet> createState() => _AddNoteSheetState();
}

class _AddNoteSheetState extends State<AddNoteSheet> 
{
  final GlobalKey<FormState> formKey= GlobalKey();
  AutovalidateMode autovalidateMode= AutovalidateMode.disabled;
  String ?title,subTitle;

  @override
  Widget build(BuildContext context) 
  {
    return Form
    (
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column
      (
        children: 
        [
          const SizedBox(height: 20,),
          CustomTextFaild
          (
            onSaved: (value)
            {
              title=value;
            },
            hintText: "Title", 
            pColor: Colors.lightBlueAccent,
          ),
          CustomTextFaild
          (
            onSaved: (value)
            {
              subTitle=value;
            },
            hintText: "content", 
            pColor: Colors.lightBlueAccent,
            numOfLines: 5,
            
          ),
          const SizedBox(height: 50,),
          CustomButton
          (
            onTap: ()
            {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }
              else{ 
                autovalidateMode=AutovalidateMode.always;
              }
            },
            title: "Add", 
            backgroundColor: Colors.lightBlueAccent, 
            titleColor: Colors.black
          )
        ],
      ),
    );
  }
}