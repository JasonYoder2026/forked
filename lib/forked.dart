import 'package:flutter/material.dart';
import 'package:forked/features/home/page.dart';

class Forked extends StatelessWidget {
  const Forked({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forked',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
