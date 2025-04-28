import 'package:flutter/material.dart';

class NoteCard extends StatelessWidget 
{
  const NoteCard({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      padding: EdgeInsets.only(top: 10,bottom: 10),
      decoration: BoxDecoration
      (
        color: Colors.amber,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column
      (
        crossAxisAlignment: CrossAxisAlignment.end,
        children: 
        [
          ListTile
          (
            title:const Text
            (
              "Flutter Tips",
              style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold),
            ),
            subtitle: Padding
            (
              padding: const EdgeInsets.only(top: 15,bottom: 15),
              child: Text
              (
                "Flutter Tips Flutter Tips Flutter Tips Flutter Tips Flutter Tips",
                style: TextStyle(color: Colors.black.withOpacity(0.5), fontSize: 15),
              ),
            ),
            trailing: IconButton
            (
              onPressed: () {},
              icon: const Icon
              (
                Icons.delete,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding
          (
            padding: const EdgeInsets.only(right: 25),
            child: Text("1 dec, 2003",style: TextStyle(color: Colors.black),),
          )
        ],
      ),
    );
  }
}

class NotesListView extends StatelessWidget 
{
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return ListView.builder
    (
      itemBuilder: (context,index)
      {
        return Padding
        (
          padding: EdgeInsets.symmetric(vertical: 10),
          child: NoteCard(),
        );
      }
    );
  }
}