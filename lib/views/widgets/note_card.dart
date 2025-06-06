import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteCard extends StatelessWidget 
{
  const NoteCard({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return GestureDetector
    (
      onTap: ()
      {
        Navigator.push
        (
          context, 
          MaterialPageRoute
          (
            builder: (BuildContext context)
            {
              return EditNoteView();
            }
          )
        );
      },
      child: Container
      (
        //padding: const EdgeInsets.all(10),
        decoration: BoxDecoration
        (
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue,
        ),
        child: Padding
        (
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column
          (
            crossAxisAlignment: CrossAxisAlignment.end,
            children: 
            [
              ListTile
              (
                title: Padding
                (
                  padding: const EdgeInsets.only(bottom: 25),
                  child: Text("Flutter tips",style: TextStyle(color: Colors.black,fontSize: 25),),
                ),
                subtitle: Text("flutter is framework to build app run in mobile flutter is framework to flutter is framework to flutter is framework to",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 15),),
                trailing: IconButton
                (
                  color: Colors.black, 
                  onPressed: () {  }, 
                  icon: const Icon(Icons.delete,),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30),
                child: Text("jun , 5,2024",style: TextStyle(color: Colors.black.withOpacity(0.5),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}