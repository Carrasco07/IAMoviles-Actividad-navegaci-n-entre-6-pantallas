import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

class PantallaSplash extends StatefulWidget {
  const PantallaSplash({super.key});
  @override
  State<PantallaSplash> createState() => _PantallaSplashState();
}

class _PantallaSplashState extends State<PantallaSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('M', style: GoogleFonts.playfairDisplay(fontSize: 100, color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Text('Mueblería Carrasco', style: GoogleFonts.playfairDisplay(fontSize: 24, color: Colors.white)),
            const SizedBox(height: 50),
            const CircularProgressIndicator(color: Colors.white),
          ],
        ),
      ),
    );
  }
}