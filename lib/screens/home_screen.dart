import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  Box f
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          
          ElevatedButton(onPressed: () {}, child: const Text('Add Notes')),
           ElevatedButton(onPressed: () {}, child: const Text('Edit NOtes')),
            ElevatedButton(onPressed: () {}, child: const Text('Update Notes')),
             ElevatedButton(onPressed: () {}, child: const Text('Delete Notes')),
        ]),
      ),
    );
  }
}
