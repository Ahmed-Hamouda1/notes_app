import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_card.dart';

class NotesList extends StatelessWidget 
{
  const NotesList({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Expanded
    (
      child: ListView.builder
      (
        itemCount: 10,
        itemBuilder: (context,i)
        {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: const NoteCard(),
          );
        }
      ),
    );
  }
}