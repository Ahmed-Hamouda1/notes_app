import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appBar.dart';

class NotesViewBody extends StatelessWidget 
{
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding
    (
      padding: const EdgeInsets.all(20),
      child: Column
      (
        children: 
        [
          const SizedBox(height: 20,),
          CustomAppBar()
      
        ],
      ),
    );
  }
}