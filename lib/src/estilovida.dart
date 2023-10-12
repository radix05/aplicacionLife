import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
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
            Color.fromRGBO(255, 190, 242, 1),
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
                'Perimenopausia',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem('images/saludFisica.png', 'Salud Fisica'),
                  _buildGridItem('images/salud-mental.png', 'Salud Mental'),
                  _buildGridItem('images/saludSexual.png', 'Salud Sexual'),
                  _buildGridItem(
                      'images/saludEmocional.png', 'Salud Emocional'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
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
                  _buildGridItem('images/saludFisica.png', 'Salud Fisica'),
                  _buildGridItem('images/salud-mental.png', 'Salud Mental'),
                  _buildGridItem('images/saludSexual.png', 'Salud Sexual'),
                  _buildGridItem(
                      'images/saludEmocional.png', 'Salud Emocional'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
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
                  _buildGridItem('images/saludFisica.png', 'Salud Fisica'),
                  _buildGridItem('images/salud-mental.png', 'Salud Mental'),
                  _buildGridItem('images/saludSexual.png', 'Salud Sexual'),
                  _buildGridItem(
                      'images/saludEmocional.png', 'Salud Emocional'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(String imagePath, String text) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
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
