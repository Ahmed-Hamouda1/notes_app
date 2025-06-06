import 'package:flutter/material.dart';
import 'package:notes_app/views/add_note_view.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget 
{
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          showModalBottomSheet
          (
            context: context, 
            builder: (context)
            {
              return  AddNoteView();
            },
            backgroundColor: const Color.fromARGB(255, 61, 56, 56)
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body: const NotesViewBody()
    );
  }
}