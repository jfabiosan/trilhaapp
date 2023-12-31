import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'home_page.dart';
import 'login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: GoogleFonts.robotoFlexTextTheme(),
      ),
      //home: const HomePage(),
      home: const LoginPage(),
    );
  }
}
