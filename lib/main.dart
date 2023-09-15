import 'dart:io';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_sample_2/screens/home_screen.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  Hive.initFlutter();
  await Hive.openBox('Notes');
  runApp(const MyAPp());
}

class MyAPp extends StatelessWidget {
  const MyAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeScreen());
  }
}
