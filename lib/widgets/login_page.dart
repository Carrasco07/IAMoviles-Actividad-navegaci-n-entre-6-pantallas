import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Color primaryColor = Colors.blueGrey[800]!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 30),
              // --- LOGO CLICKEABLE PARA VOLVER AL SPLASH ---
              GestureDetector(
                onTap: () => context.go('/splash'),
                child: Text(
                  "M",
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold, color: primaryColor),
                ),
              ),
              const Text(
                "Mueblería\nCarrasco",
                style: TextStyle(fontSize: 18, height: 1.2, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 50),
              const Center(child: Text("Bienvenido", style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))),
              const Center(child: Text("Inicia sesión para continuar", style: TextStyle(fontSize: 16, color: Colors.grey))),
              const SizedBox(height: 40),
              Text("Nombre de Usuario", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline, color: primaryColor),
                  hintText: "Ej: usuario123",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 25),
              Text("Contraseña", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
              const SizedBox(height: 10),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock_outline, color: primaryColor),
                  hintText: "••••••••",
                  filled: true,
                  fillColor: Colors.blueGrey[50],
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none),
                ),
              ),
              const SizedBox(height: 35),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () => context.go('/home'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  ),
                  child: const Text("Iniciar Sesión", style: TextStyle(color: Colors.white, fontSize: 18)),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Column(
                  children: [
                    const Text("¿No tienes una cuenta?", style: TextStyle(fontSize: 15)),
                    const SizedBox(height: 10),
                    OutlinedButton(
                      onPressed: () => context.go('/register'),
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: primaryColor, width: 2),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                        minimumSize: const Size(200, 45),
                      ),
                      child: Text("Crear Cuenta", style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
