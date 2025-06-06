
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
      this.maxLines=1
    }
  );

  @override
  Widget build(BuildContext context) 
  {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField
      ( 
        
        obscureText: secure,
        controller: controller,
        //keyboardType: TextInputType.,
        validator: (data)
        {
          if(data!.isEmpty)
            return "is empty";
        },
        style: TextStyle(color: pColor),
        onChanged: onChange,
        onFieldSubmitted: onSubmited,
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