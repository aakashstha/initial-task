import 'package:flutter/material.dart';
import 'package:initial_task/helpscreen.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    
    home: Scaffold(
      body: const HelpScreen(),
    ),
  ));
}
