import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:petadoption/app/pages/Homepage/Homepage.dart';
import 'package:petadoption/app/pages/landing_page/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pet Adoption',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent),
        useMaterial3: true,
        textTheme: GoogleFonts.pangolinTextTheme(),
      ),
      home: const Homepage(),
    );
  }
}
