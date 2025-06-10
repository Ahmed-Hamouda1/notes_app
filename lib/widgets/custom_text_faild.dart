
import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget 
{
  final String hintText;
  Color pColor=Colors.white;
  Widget? suffix;
  bool secure ;
  TextEditingController? controller=TextEditingController();
  Function(String)? onChange;
  Function(String)? onSubmited;
  Function(String?)? onSaved;
  int maxLines;

  CustomTextFaild
  (
    {
      super.key, 
      required this.hintText, 
      this.onChange,
      this.onSubmited, 
      this.controller,
      required this.pColor,
      this.suffix,
      this.secure=false,
      this.maxLines=1,
      this.onSaved
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField
      ( 
        onSaved: onSaved,
        onChanged: onChange,
        onFieldSubmitted: onSubmited,
        obscureText: secure,
        controller: controller,
        //keyboardType: TextInputType.,
        validator: (data)
        {
          if(data?.isEmpty ?? true)  // لو حطيت علامة تعجب اذا بقوله انها مش هتبقا بنل طب ازاى ؟ وانا اصلا بتحقق انها فارغه ولا لا انما علامة الاستفهام عنا بتقوله لو مش بنلل شوفها فارغه ولا لا طيب ماهو لو بنلل مش هياكسس اللى هطبعه
            return "is empty";
          else
            return null;
        },
        style: TextStyle(color: pColor),
        
        cursorColor: pColor,
        maxLines: maxLines,
        decoration: InputDecoration
        (   
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey),
          enabledBorder: OutlineInputBorder // textFaild just enabeld , before user click
          (
            borderSide: BorderSide(color: pColor),
          ),
          focusedBorder: OutlineInputBorder // after user click on textFaild
          (
            borderSide: BorderSide(color: pColor),
          ) ,
          border:OutlineInputBorder // defualt state
          (
            borderSide: BorderSide(color: pColor),
          ),
        ),
      ),
    );
  }
}

/*
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

    

 */