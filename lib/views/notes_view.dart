import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_bottom_sheet.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold
    (
      floatingActionButton: FloatingActionButton
      (
        onPressed: ()
        {
          showModalBottomSheet
          (
            shape: RoundedRectangleBorder
            (
              borderRadius: BorderRadius.circular(25)
            ),
            context: context, 
            builder: (context)
            {
              return const CustomBottomSheet();
            }
          );
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}