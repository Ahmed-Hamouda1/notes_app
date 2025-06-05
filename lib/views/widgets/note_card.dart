import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget 
{
  const NoteCard({super.key});
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration
      (
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
      ),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.end,
        children: 
        [
          ListTile
          (
            title: Text("Flutter tips",style: TextStyle(color: Colors.black),),
            subtitle: Text("flutter is framework to build app run in mobile flutter is framework to flutter is framework to flutter is framework to",style: TextStyle(color: Colors.black.withOpacity(0.5),),),
            trailing: Icon(Icons.delete,color: Colors.black,),
          ),
          Text("jun , 5,2024",style: TextStyle(color: Colors.black.withOpacity(0.5),))
        ],
      ),
    );
  }
}