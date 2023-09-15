import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
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
          
          ElevatedButton(onPressed: () {}, child: const Text('Add Friend')),
           ElevatedButton(onPressed: () {}, child: const Text('Edit Friend')),
            ElevatedButton(onPressed: () {}, child: const Text('Update Friend')),
             ElevatedButton(onPressed: () {}, child: const Text('Delete Friend')),
        ]),
      ),
    );
  }
}
