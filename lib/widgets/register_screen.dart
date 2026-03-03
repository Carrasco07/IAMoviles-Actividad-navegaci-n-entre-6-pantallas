import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// --- PÁGINA 3: REGISTRO ---
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // --- APPBAR CON BOTÓN DE RETROCESO ---
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => context.pop(), // Vuelve a la pantalla anterior (Login)
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0), // Ajuste de padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // --- LOGO CLICKEABLE ---
                GestureDetector(
                  onTap: () => context.go('/splash'),
                  child: const Text('M', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                ),
                const Text('Mueblería', style: TextStyle(fontSize: 16)),
                const Text('Carrasco', style: TextStyle(fontSize: 16)),
                const SizedBox(height: 30),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person_outline, size: 40),
                    SizedBox(width: 10),
                    Text('Crear Cuenta', style: TextStyle(fontSize: 24)),
                  ],
                ),
                const SizedBox(height: 30),
                const Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Nombre', style: TextStyle(fontWeight: FontWeight.w500)),
                          SizedBox(height: 5),
                          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Apellido', style: TextStyle(fontWeight: FontWeight.w500)),
                          SizedBox(height: 5),
                          TextField(decoration: InputDecoration(border: OutlineInputBorder())),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                const Text('Nombre de Usuario', style: TextStyle(fontWeight: FontWeight.w500)),
                const SizedBox(height: 5),
                const TextField(decoration: InputDecoration(border: OutlineInputBorder())),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.email_outlined),
                    SizedBox(width: 10),
                    Text('Correo Electrónico', style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
                const SizedBox(height: 5),
                const TextField(decoration: InputDecoration(border: OutlineInputBorder())),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    Icon(Icons.lock_outline),
                    SizedBox(width: 10),
                    Text('Contraseña', style: TextStyle(fontWeight: FontWeight.w500)),
                  ],
                ),
                const SizedBox(height: 5),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    suffixIcon: Icon(Icons.visibility_outlined),
                  ),
                ),
                const SizedBox(height: 40),
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    // --- ACCIÓN CAMBIADA ---
                    onPressed: () => context.go('/home'), // Navega a home al crear la cuenta
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFC5CAE9),
                      foregroundColor: Colors.black87,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: const BorderSide(color: Colors.black45),
                      ),
                    ),
                    // --- TEXTO DEL BOTÓN CAMBIADO ---
                    child: const Text('Crear Cuenta', style: TextStyle(fontSize: 18)),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 10, // Ajustado a la nueva AppBar
            right: 20,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.amber[300],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 4, offset: Offset(2, 2))],
              ),
              child: const Text(
                'Omar Carrasco 6I',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.black87),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
