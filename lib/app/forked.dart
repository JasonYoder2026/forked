import 'package:flutter/material.dart';
import 'package:forked/core/config/app_theme.dart';
import 'package:forked/features/home/page.dart';

class Forked extends StatelessWidget {
  const Forked({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forked',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: const HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
