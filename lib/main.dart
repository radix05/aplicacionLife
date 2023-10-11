import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'src/edadProvider.dart'; // Importa la clase que definiste para EdadProvider
import 'src/move.dart';

final RouteObserver<PageRoute> routeObserver = RouteObserver<PageRoute>();

void main() => runApp(
      ChangeNotifierProvider(
        create: (_) => EdadProvider(), // Crea una instancia del provider
        child: const MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Página Principal',
      home: SplashScreen(), // Mostrar SplashScreen al inicio
      navigatorObservers: [
        routeObserver,
      ], // Agregar el observer a la aplicación
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simula una espera de 2 segundos (ajusta el tiempo según sea necesario)
    Future.delayed(const Duration(seconds: 3), () {
      // Navega a la ruta 'move' cuando termine la SplashScreen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Move(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 254, 255, 255),
              Color.fromARGB(255, 254, 255, 255),
              Color.fromARGB(255, 255, 154, 253),
            ], // Colores de tu degradado
          ),
        ),
        child: Center(
          child: Image.asset(
            'images/logo_png.png',
          ), // Asegúrate de que la ruta sea correcta
        ),
      ),
    );
  }
}
