import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Box noteBox = Hive.box('Notes');
  String? name;

  addNote() async {
    await noteBox.put('name', 'Bill Gates');
  }

  getNote() async {
    setState(() {
      name = noteBox.get('name');
    });
  }

  deleteNote() async {
    await noteBox.delete('name');
  }

  updateNote() async {
    setState(() {
       noteBox.put('name', "Elon musk");
    });
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text('$name'),
        ElevatedButton(
            onPressed: () {
              addNote();
            },
            child: const Text('Add Notes')),
        ElevatedButton(
            onPressed: () {
              getNote();
            },
            child: const Text('get NOtes')),
        ElevatedButton(
            onPressed: () {
              updateNote();
            },
            child: const Text('Update Notes')),
        ElevatedButton(
            onPressed: () {
              deleteNote;
            },
            child: const Text('Delete Notes')),
      ]),
    );
  }
}
