import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'PerfiSexual.dart';
import 'PeriEmocional.dart';
import 'PeriFisica.dart';
import 'PeriMental.dart';
import 'edadProvider.dart';
import 'Emocional.dart';
import 'Fisica.dart';
import 'Sexual.dart';
import 'Mental.dart';
import 'PostFisica.dart';
import 'PostEmocional.dart';
import 'PostMental.dart';
import 'PostSexual.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CuidadosScreen extends StatefulWidget {
  const CuidadosScreen({Key? key}) : super(key: key);

  @override
  _CuidadosScreenState createState() => _CuidadosScreenState();
}

class _CuidadosScreenState extends State<CuidadosScreen> {
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
        title: const Text('Cuidados'),
      ),
      body: ChangeNotifierProvider<EdadProvider>(
        create: (context) => EdadProvider(),
        child: UserCarePage(),
      ),
    );
  }
}

class UserCarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final edadProvider = Provider.of<EdadProvider>(context);
    final edad = edadProvider.edad;
    print("Edad actual en CuidadosScreen: $edad");

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
                  _buildGridItem(
                      context, 'images/saludFisica.png', 'Salud Fisica', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PeriFisica()));
                  }),
                  _buildGridItem(
                      context, 'images/salud-mental.png', 'Salud Mental', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PeriMental()));
                  }),
                  _buildGridItem(
                      context, 'images/saludSexual.png', 'Salud Sexual', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PeriSexual()));
                  }),
                  _buildGridItem(
                      context, 'images/saludEmocional.png', 'Salud Emocional',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PeriEmocional()));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Function() onTap) {
    return InkWell(
      onTap: onTap,
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
                'menopausia',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem(
                      context, 'images/saludFisica.png', 'Salud Fisica', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Fisica()));
                  }),
                  _buildGridItem(
                      context, 'images/salud-mental.png', 'Salud Mental', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Mental()));
                  }),
                  _buildGridItem(
                      context, 'images/saludSexual.png', 'Salud Sexual', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Sexual()));
                  }),
                  _buildGridItem(
                      context, 'images/saludEmocional.png', 'Salud Emocional',
                      () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Emocional()));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Function() onTap) {
    return InkWell(
      onTap: onTap,
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
                'PostMenopauisa',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem(
                      context, 'images/saludFisica.png', 'Salud Fisica', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostFisica()));
                  }),
                  _buildGridItem(
                      context, 'images/salud-mental.png', 'Salud Mental', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostMental()));
                  }),
                  _buildGridItem(
                      context, 'images/saludSexual.png', 'Salud Sexual', () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PostSexual()));
                  }),
                  _buildGridItem(
                      context, 'images/saludEmocional.png', 'Salud Emocional',
                      () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PostEmocional()));
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridItem(
      BuildContext context, String imagePath, String text, Function() onTap) {
    return InkWell(
      onTap: onTap,
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
            Color.fromRGBO(255, 190, 242, 1),
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
