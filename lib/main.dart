import 'package:flutter/material.dart';
import 'package:myapp/widgets/pantalla_splash.dart';
import 'package:myapp/widgets/login_page.dart';
import 'package:myapp/widgets/register_screen.dart';

void main() {
  runApp(const MuebleriaApp());
}

class MuebleriaApp extends StatelessWidget {
  const MuebleriaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mueblería Carrasco',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaSplash(),
        '/login': (context) => const LoginPage(),
        '/registro': (context) => RegisterScreen(),
      },
    );
  }
}