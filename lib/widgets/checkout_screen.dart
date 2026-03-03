import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800],
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => context.pop(), // CORREGIDO
        ),
        title: GestureDetector(
          onTap: () {
            context.go('/splash'); // Navega a la pantalla de bienvenida
          },
          child: Text(
            'Mueblería Carrasco',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fila para Nombre y Apellidos
              Row(
                children: [
                  Expanded(child: _buildTextField(label: 'Nombre(s)')),
                  const SizedBox(width: 20),
                  Expanded(child: _buildTextField(label: 'Apellidos')),
                ],
              ),
              const SizedBox(height: 20),

              // Campo de Email
              _buildTextField(label: 'Email'),
              const SizedBox(height: 20),

              // Fila para Calle y Colonia
              Row(
                children: [
                  Expanded(child: _buildTextField(label: 'Calle')),
                  const SizedBox(width: 20),
                  Expanded(child: _buildTextField(label: 'Colonia')),
                ],
              ),
              const SizedBox(height: 20),

              // Fila para Ciudad y Estado
              Row(
                children: [
                  Expanded(child: _buildTextField(label: 'Ciudad')),
                  const SizedBox(width: 20),
                  Expanded(child: _buildTextField(label: 'Estado')),
                ],
              ),
              const SizedBox(height: 20),

              // Fila para Código Postal y País
              Row(
                children: [
                  Expanded(child: _buildTextField(label: 'Código Postal')),
                  const SizedBox(width: 20),
                  Expanded(child: _buildTextField(label: 'País')),
                ],
              ),
              const SizedBox(height: 40),

              // Sección de Total a Pagar
              Center(
                child: Column(
                  children: [
                    Text(
                      'Total a pagar',
                      style: GoogleFonts.lato(fontSize: 18, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        '\$ 15,999.00',
                        style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF333333),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              // Botón de Realizar Pago
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Lógica para procesar el pago
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey[800],
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 5,
                  ),
                  child: Text(
                    'Realizar Pago',
                    style: GoogleFonts.lato(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget reutilizable para crear los campos de texto del formulario
  Widget _buildTextField({required String label}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.lato(fontSize: 14, color: Colors.black54),
        ),
        const SizedBox(height: 4),
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey[100],
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
        ),
      ],
    );
  }
}
