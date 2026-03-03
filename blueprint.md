# Blueprint: Mueblería Carrasco App

## Visión General

Esta es una aplicación de Flutter para "Mueblería Carrasco". La aplicación permite a los usuarios navegar por productos, ver detalles, iniciar un proceso de compra y registrarse. Cuenta con una navegación robusta y un diseño inspirado en bocetos proporcionados por el usuario.

## Estilo, Diseño y Características Existentes

*   **Navegación:** Se utiliza el paquete `go_router` para una navegación declarativa y centralizada. Se ha implementado una **navegación de retroceso coherente** en toda la aplicación, permitiendo al usuario volver a la pantalla anterior de forma intuitiva mediante una flecha en la `AppBar`.

*   **Estilo General:** La aplicación utiliza el paquete `google_fonts` para una tipografía personalizada y sigue una paleta de colores y un diseño consistentes.

*   **Pantalla Splash (`pantalla_splash.dart`):**
    *   Pantalla de bienvenida que redirige automáticamente a la pantalla de login.

*   **Pantalla de Login (`login_page.dart`):**
    *   Permite a los usuarios iniciar sesión.

*   **Pantalla de Registro (`register_screen.dart`):**
    *   Permite a los usuarios crear una nueva cuenta.
    *   **Mejora de UX:** Incluye una `AppBar` con un botón de retroceso para volver a la pantalla de Login.
    *   El botón principal ahora es "Crear Cuenta" y navega a la pantalla de inicio, simulando un registro exitoso.

*   **Pantalla de Inicio (`home_page.dart`):**
    *   Pantalla principal con barra de búsqueda, categorías y una cuadrícula de productos interactivos.

*   **Pantalla de Detalles del Producto (`product_details_screen.dart`):**
    *   Diseño basado en boceto con imagen, nombre, calificación, precio y métodos de pago.
    *   **Funcionalidad clave:** El botón "Añadir al Carrito" y el icono del carrito en la barra de navegación ahora son funcionales y dirigen al usuario a la pantalla de pago.

*   **Pantalla de Pago (`checkout_screen.dart`):**
    *   **NUEVA PANTALLA:** Creada para replicar fielmente el boceto de la pantalla de pago.
    *   **Formulario de Pago:** Contiene campos para Nombre, Apellidos, Email y dirección de envío.
    *   **Resumen de Compra:** Muestra el "Total a pagar" y un botón para "Realizar Pago".

## Plan Actual: Implementación de Flujo de Pago y Mejora de Navegación

Esta fase se centró en crear el flujo de compra desde el detalle del producto hasta la pantalla de pago, y en mejorar la navegación general de la aplicación para que sea más intuitiva.

**Pasos Completados:**

1.  **Crear Pantalla de Pago:** Se creó el archivo `lib/widgets/checkout_screen.dart` y se diseñó la interfaz basada en el boceto proporcionado.
2.  **Actualizar Rutas:** Se añadió la nueva ruta `/checkout` a la configuración de `GoRouter` en `lib/main.dart`.
3.  **Conectar Flujo de Compra:** Se modificó la pantalla `product_details_screen.dart` para que el botón "Añadir al Carrito" y el icono del carrito naveguen a `/checkout`.
4.  **Mejorar Navegación:** Se añadió una `AppBar` con un botón de retroceso a la pantalla de Registro y se verificó que todas las pantallas relevantes (Checkout, Detalles, Registro) permitan al usuario volver a la pantalla anterior de forma lógica.
5.  **Documentar:** Se actualizó este `blueprint.md` para reflejar todos los nuevos cambios.

## Próximos Pasos

*   Implementar la funcionalidad real de los botones (procesar pagos, gestionar cantidades, etc.).
*   Crear las pantallas de perfil de usuario y de favoritos.
*   Conectar la aplicación a un backend (como Firebase) para gestionar productos, usuarios, y carritos de compra reales.
