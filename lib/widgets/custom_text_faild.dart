
import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget 
{
  final String hintText;
  Color ?hintColor;
  Color pColor=Colors.white;
  Widget? suffix;
  bool secure ;
  TextEditingController? controller=TextEditingController();
  TextInputType? inputType;
  int ?numOfLines;
  void Function(String?)? onSaved;

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
      this.secure = false,
      this.inputType,
      this.hintColor,
      this.numOfLines,
      this.onSaved,
    }
  );
  Function(String)? onChange;
  Function(String)? onSubmited;

  @override
  Widget build(BuildContext context) 
  {
    return Padding
    (
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField
      ( 
        onSaved: onSaved,
        validator: (value)
        {
          if(value?.isEmpty ?? true)
          {
            return 'is required';
          } 
          else
          {
          return null;
          }
        },
        keyboardType: inputType,
        obscureText: secure,
        controller: controller,
        //keyboardType: TextInputType.,
        
        style: TextStyle(color: pColor,fontSize: 15),
        onChanged: onChange,
        decoration: InputDecoration
        (   
          suffixIcon: suffix,
          hintText: hintText,
          hintStyle: TextStyle(color: pColor),
          enabledBorder: OutlineInputBorder
          (
            borderSide: const BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)
          ),
          focusedBorder: OutlineInputBorder
          (
            borderSide: BorderSide(color: pColor),
            borderRadius: BorderRadius.circular(10)
          ) ,
          // border:OutlineInputBorder
          // (
          //   borderSide: BorderSide(color: pColor),
          // ),
        ),
        maxLines: numOfLines,
      ),
    );
  }
}