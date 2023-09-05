
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Farmers Fresh Zone App UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: GoogleFonts.workSans().fontFamily,
      ),
      home: const HomeScreen(),
    );
  }
}