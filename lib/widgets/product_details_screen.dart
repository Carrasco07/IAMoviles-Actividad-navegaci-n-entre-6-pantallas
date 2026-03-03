import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco para consistencia
      appBar: AppBar(
        backgroundColor: Colors.blueGrey[800], // Color azul grisáceo
        elevation: 4,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white), // Icono blanco
          onPressed: () => context.pop(), // CORREGIDO
        ),
        title: GestureDetector(
          onTap: () {
            context.go('/splash'); // Navega a la pantalla de bienvenida
          },
          child: Text(
            'Mueblería Carrasco',
            style: GoogleFonts.playfairDisplay(
              color: Colors.white, // Texto blanco
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person_outline, color: Colors.white), // Icono blanco
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white), // Icono blanco
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white), // Icono blanco
            onPressed: () {
              context.go('/checkout'); // Navega a la pantalla de pago
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Imagen del producto
              Container(
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: NetworkImage('https://raw.githubusercontent.com/Carrasco07/IAMoviles-Act9-PantallaDiseno/refs/heads/main/Cocina%20Integral.jpg'),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),

              // Nombre del producto
              Text(
                'Escritorio Esquinero',
                style: GoogleFonts.lato(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 12),

              // Calificación y reseñas
              Row(
                children: [
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const Icon(Icons.star, color: Colors.amber, size: 20),
                  const Icon(Icons.star_half, color: Colors.amber, size: 20),
                  const SizedBox(width: 8),
                  Text(
                    '4.8 (34 reseñas)',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              // Precio y descuento
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '\$ 3,799.00',
                    style: GoogleFonts.montserrat(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF2A3C44),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    '28% de descuento',
                    style: GoogleFonts.lato(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFFD32F2F),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 30),

              // Métodos de pago
              Text(
                'Método de Pago',
                style: GoogleFonts.lato(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF333333),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _buildPaymentIcon('VISA'),
                  _buildPaymentIcon('OXXO'),
                  _buildPaymentIcon('PP'), // Asumo que es PayPal
                  _buildPaymentIcon('Master'), // Añadido para completar
                ],
              ),
              const SizedBox(height: 30),

              // Cantidad y botón de añadir al carrito
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Selector de cantidad
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: [
                        IconButton(icon: const Icon(Icons.remove), onPressed: () {}),
                        const Text('1', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        IconButton(icon: const Icon(Icons.add), onPressed: () {}),
                      ],
                    ),
                  ),
                  // Botón de añadir al carrito
                  ElevatedButton.icon(
                    onPressed: () {
                      context.go('/checkout'); // ¡AQUÍ ESTÁ LA MAGIA!
                    },
                    icon: const Icon(Icons.add_shopping_cart, color: Colors.white),
                    label: Text(
                      'Añadir al Carrito',
                      style: GoogleFonts.lato(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF2A3C44),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Widget para construir los iconos de método de pago
  Widget _buildPaymentIcon(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        text,
        style: GoogleFonts.lato(fontWeight: FontWeight.bold, color: Colors.black54),
      ),
    );
  }
}
