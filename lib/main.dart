import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/widgets/checkout_screen.dart';
import 'package:myapp/widgets/home_page.dart';
import 'package:myapp/widgets/login_page.dart';
import 'package:myapp/widgets/pantalla_splash.dart';
import 'package:myapp/widgets/product_details_screen.dart';
import 'package:myapp/widgets/register_screen.dart';

void main() {
  runApp(const MuebleriaCarrasco());
}

final GoRouter _router = GoRouter(
  initialLocation: '/splash',
  routes: <RouteBase>[
    GoRoute(
      path: '/splash',
      name: 'splash', // AÑADIDO
      builder: (BuildContext context, GoRouterState state) {
        return const PantallaSplash();
      },
    ),
    GoRoute(
      path: '/login',
      name: 'login', // AÑADIDO
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/register',
      name: 'register', // AÑADIDO
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterScreen();
      },
    ),
    GoRoute(
      path: '/home',
      name: 'home', // AÑADIDO
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'product-details',
          name: 'product-details', // AÑADIDO
          builder: (BuildContext context, GoRouterState state) {
            return const ProductDetailsScreen();
          },
          routes: <RouteBase>[
            GoRoute(
              path: 'checkout',
              name: 'checkout', // AÑADIDO
              builder: (BuildContext context, GoRouterState state) {
                return const CheckoutScreen();
              },
            ),
          ],
        ),
      ],
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
