import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_faild.dart';

class AddNoteView extends StatelessWidget 
{
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const Padding
    (
      padding: EdgeInsets.all(15),
      child: SingleChildScrollView
      (
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget 

{
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> 
{
  final GlobalKey<FormState> form1 = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title ,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form
    (
      key: form1,
      autovalidateMode: autoValidateMode,
      child: Column
      (
        children: 
        [
          CustomTextFaild
          (
            onSaved: (value)
            {
              title=value;
            },
            hintText: "title", 
            pColor: Colors.lightBlue
          ),
          CustomTextFaild
          (
            onSaved: (value)
            {
              subTitle =value;
            },
            hintText: "description", 
            pColor: Colors.lightBlue,
            maxLines: 5,
          ),
          const SizedBox(height: 30,),
          CustomButton
          (
            onTap: ()
            {
              if(form1.currentState!.validate())
              {
                form1.currentState!.save(); // بتنفذ كل الأكشنات اللي في onSaved: لكل حقل.
              }
              else
              {
                autoValidateMode =AutovalidateMode.always; // معناها: "ابدأ طلع رسائل الخطأ على طول من غير ما أستنى المستخدم يضغط Save تاني"
                setState(() {
                });
              }
            },
            title: "Add",
            color: Colors.blue,
            titleColor:Colors.black
          ),      
        ],
      ),
    );
  }
}