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

  addNote() {}
  deleteNote() {}
  editNote() {}
  updateNote() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ElevatedButton(onPressed: () {}, child: const Text('Add Notes')),
          ElevatedButton(onPressed: () {}, child: const Text('Edit NOtes')),
          ElevatedButton(onPressed: () {}, child: const Text('Update Notes')),
          ElevatedButton(onPressed: () {}, child: const Text('Delete Notes')),
        ]),
      ),
    );
  }
}
