import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_card.dart';
import 'package:notes_app/views/widgets/notes_view_appbar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding
    (
      padding: const EdgeInsets.all(15),
      child: Column
      (
        children: 
        [
          SizedBox(height: 50,),
          NotesViewAppBar(),
          SizedBox(height: 20,),
          Expanded(child: NotesListView())
        ],
      ),
    );
  }
}