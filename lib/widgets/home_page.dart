import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart'; // Asegúrate de importar go_router

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // BARRA DE NAVEGACIÓN (AZUL GRISÁCEO)
      appBar: AppBar(
        // El GestureDetector ahora envuelve a un Text que NO es constante.
        title: GestureDetector(
          onTap: () {
            context.go('/splash'); // Navega a la pantalla de bienvenida
          },
          child: Text("Mueblería Carrasco"), // ¡Se eliminó el const!
        ),
        backgroundColor: Colors.blueGrey[800],
        actions: [
          // Iconos en la parte superior derecha (Agregado el de Perfil)
          IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.shopping_cart_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Encuentra el mueble ideal",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // BARRA DE BÚSQUEDA
            TextField(
              decoration: InputDecoration(
                hintText: 'Buscar muebles...',
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
            const SizedBox(height: 12),

            // CATEGORÍAS
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _categoryChip("Comedor", Icons.table_restaurant),
                _categoryChip("Recámara", Icons.bed),
                _categoryChip("Sala", Icons.chair),
              ],
            ),
            const SizedBox(height: 12),

            // CUADRÍCULA DE PRODUCTOS CON IMÁGENES REALES
            GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 0.9, // Ajustado para que quepa la imagen y el texto
              children: [
                _productCard(
                  context, // Pasa el BuildContext
                  "Cocina Integral", 
                  "17,595", 
                  "https://raw.githubusercontent.com/Carrasco07/IAMoviles-Act9-PantallaDiseno/refs/heads/main/Cocina%20Integral.jpg"
                ),
                _productCard(
                  context, // Pasa el BuildContext
                  "Juego de comedor", 
                  "11,399", 
                  "https://raw.githubusercontent.com/Carrasco07/IAMoviles-Act9-PantallaDiseno/refs/heads/main/Juego%20de%20comedor.jpg"
                ),
                _productCard(
                  context, // Pasa el BuildContext
                  "Closet Matrimonial", 
                  "19,999", 
                  "https://raw.githubusercontent.com/Carrasco07/IAMoviles-Act9-PantallaDiseno/refs/heads/main/Closet%20Matrimonial.jpg"
                ),
                _productCard(
                  context, // Pasa el BuildContext
                  "Zapatera Moderna", 
                  "9,609", 
                  "https://raw.githubusercontent.com/Carrasco07/IAMoviles-Act9-PantallaDiseno/refs/heads/main/Zapatera%20Moderna.jpg"
                ),
              ],
            ),
          ],
        ),
        ),
      ),
    );
  }

  Widget _categoryChip(String label, IconData icon) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: Colors.blueGrey[50],
          child: Icon(icon, color: Colors.blueGrey[800]),
        ),
        const SizedBox(height: 5),
        Text(label, style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _productCard(BuildContext context, String name, String price, String imageUrl) {
    return GestureDetector(
      onTap: () {
        // Navega a la pantalla de detalles del producto
        context.go('/product-details');
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  // Muestra un color gris mientras carga la imagen
                  loadingBuilder: (context, child, progress) {
                    return progress == null ? child : Container(color: Colors.grey[200]);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    name, 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13), 
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "\$$price.00", 
                    style: TextStyle(color: Colors.blueGrey[900], fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}