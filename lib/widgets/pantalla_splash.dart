
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PantallaSplash extends StatefulWidget {
  const PantallaSplash({super.key});

  @override
  State<PantallaSplash> createState() => _PantallaSplashState();
}

class _PantallaSplashState extends State<PantallaSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 4), () {
      // Navega a la pantalla de login después de 4 segundos
      if (mounted) {
        context.go('/login');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Color de fondo oscuro como en la imagen de referencia
      backgroundColor: const Color(0xFF2A3C44),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Letra "M" grande y estilizada como logo
            Text(
              'M',
              style: GoogleFonts.playfairDisplay(
                fontSize: 120,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            // Nombre de la mueblería con una fuente elegante
            Text(
              'Mueblería Carrasco',
              style: GoogleFonts.lora(
                fontSize: 26,
                color: Colors.white,
                fontStyle: FontStyle.italic,
              ),
            ),
            const SizedBox(height: 40),
            // Indicador de progreso de color blanco
            const SizedBox(
              width: 24,
              height: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
