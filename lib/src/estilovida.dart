import 'package:aplicacion_principal/src/PostNutricion.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'PeriDescanso.dart';
import 'PeriEjercicio.dart';
import 'PeriEstres.dart';
import 'PeriNutricion.dart';
import 'PostDescanso.dart';
import 'PostEjercicio.dart';
import 'PostEstres.dart';
import 'Descanso.dart';
import 'Ejercicio.dart';
import 'Estres.dart';
import 'Nutricion.dart';
import 'edadProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EstiloVidaScreen extends StatefulWidget {
  const EstiloVidaScreen({Key? key}) : super(key: key);

  @override
  _EstiloVidaScreenState createState() => _EstiloVidaScreenState();
}

class _EstiloVidaScreenState extends State<EstiloVidaScreen> {
  int edad = 0;

  @override
  void initState() {
    super.initState();
    _cargarEdadUsuario();
  }

  Future<void> _cargarEdadUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? edadGuardada = prefs.getInt('edad');

    setState(() {
      edad = edadGuardada ?? 0;
    });

    Future.delayed(Duration.zero, () {
      final edadProvider = Provider.of<EdadProvider>(context, listen: false);
      edadProvider.actualizarEdad(edad);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Estilo de Vida'),
      ),
      body: ChangeNotifierProvider<EdadProvider>(
        create: (context) => EdadProvider(),
        child: UserLifestylePage(),
      ),
    );
  }
}

class UserLifestylePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final edadProvider = Provider.of<EdadProvider>(context);
    final edad = edadProvider.edad;
    print("Edad actual en EstiloVidaScreen: $edad");

    Widget screen;

    if (edad >= 35 && edad <= 45) {
      screen = Peri();
    } else if (edad >= 46 && edad <= 55) {
      screen = Meno();
    } else if (edad >= 56) {
      screen = Post();
    } else {
      screen = GeneralScreen();
    }

    return screen;
  }
}

class Peri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 255, 140, 240),
            Color.fromARGB(255, 251, 83, 139),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'PeriMenopausia',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem(context, 'images/Nutricion.png', 'Nutrición',
                      PeriNutricion()),
                  _buildGridItem(context, 'images/Ejercicio.png', 'Ejercicio',
                      PeriEjercicio()),
                  _buildGridItem(context, 'images/manejo-del-estres.png',
                      'Manejo de Estrés', PeriEstres()),
                  _buildGridItem(context, 'images/Sueño.png',
                      'Hábitos de Descanso', PeriDescanso()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(197, 255, 255, 255),
              Color.fromARGB(121, 255, 255, 255),
            ],
          ),
        ),
        width: 100,
        height: 100,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Meno extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 255, 140, 240),
            Color.fromARGB(255, 251, 83, 139),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Menopausia',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem(context, 'images/Nutricion.png', 'Nutrición',
                      Nutricion()),
                  _buildGridItem(context, 'images/Ejercicio.png', 'Ejercicio',
                      Ejercicio()),
                  _buildGridItem(context, 'images/manejo-del-estres.png',
                      'Manejo de Estrés', Estres()),
                  _buildGridItem(context, 'images/Sueño.png',
                      'Hábitos de Descanso', Descanso()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(197, 255, 255, 255),
              Color.fromARGB(121, 255, 255, 255),
            ],
          ),
        ),
        width: 100,
        height: 100,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Post extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 255, 140, 240),
            Color.fromARGB(255, 251, 83, 139),
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'PostMenopausia',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem(context, 'images/Nutricion.png', 'Nutrición',
                      PostNutricion()),
                  _buildGridItem(context, 'images/Ejercicio.png', 'Ejercicio',
                      PostEjercicio()),
                  _buildGridItem(context, 'images/manejo-del-estres.png',
                      'Manejo de Estrés', PostEstres()),
                  _buildGridItem(context, 'images/Sueño.png',
                      'Hábitos de Descanso', PostDescanso()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Widget destination) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => destination));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(197, 255, 255, 255),
              Color.fromARGB(121, 255, 255, 255),
            ],
          ),
        ),
        width: 100,
        height: 100,
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 50,
              height: 50,
            ),
            const SizedBox(height: 10),
            Text(
              text,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GeneralScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.white,
            Color.fromARGB(255, 255, 140, 240),
            Color.fromARGB(255, 251, 83, 139),
          ],
        ),
      ),
      child: const Center(
        child: Text(
          'Pantalla Gris para Edades Generales',
          style: TextStyle(fontSize: 18.0, color: Colors.black),
        ),
      ),
    );
  }
}
