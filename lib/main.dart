import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/checkout_screen.dart';
import 'package:myapp/widgets/home_page.dart';
import 'package:myapp/widgets/login_page.dart';
import 'package:myapp/widgets/pantalla_splash.dart';
import 'package:myapp/widgets/product_details_screen.dart';
import 'package:myapp/widgets/register_screen.dart';

// La función main ahora es síncrona y no tiene inicialización de Firebase
void main() {
  runApp(const MuebleriaCarrasco());
}

final GoRouter _router = GoRouter(
  initialLocation: '/splash',
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const PantallaSplash();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/product-details',
      builder: (BuildContext context, GoRouterState state) {
        return const ProductDetailsScreen();
      },
    ),
    GoRoute(
      path: '/checkout',
      builder: (BuildContext context, GoRouterState state) {
        return const CheckoutScreen();
      },
    ),
  ],
);

class MuebleriaCarrasco extends StatelessWidget {
  const MuebleriaCarrasco({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
      title: 'Mueblería Carrasco',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: GoogleFonts.latoTextTheme(
          Theme.of(context).textTheme,
        ),
        useMaterial3: false,
      ),
    );
  }
}
