import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';
import 'package:notes_app/views/widgets/notes_list.dart';

class NotesViewBody extends StatelessWidget 
{
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return const Padding
    (
      padding: EdgeInsets.all(20),
      child: Column
      (
        children: 
        [
          SizedBox(height: 20,),
          CustomAppBar(),
          SizedBox(height: 20,),
          NotesList(),
        ],
      ),
    );
  }
}