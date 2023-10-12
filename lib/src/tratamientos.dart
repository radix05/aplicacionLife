import 'package:flutter/material.dart';

class TratamientosScreen extends StatelessWidget {
  const TratamientosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Tratamientos'),
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
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
          child: UserCarePage(),
        ),
      ),
    );
  }
}

class UserCarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Simplemente coloca el contenido específico de "Tratamientos" aquí.
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const Text(
                'Contenido de Tratamientos',
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              const SizedBox(height: 20),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  _buildGridItem('images/logo.png', 'Tratamiento 1'),
                  _buildGridItem('images/logo.png', 'Tratamiento 2'),
                  _buildGridItem('images/logo.png', 'Tratamiento 3'),
                  _buildGridItem('images/logo.png', 'Tratamiento 4'),
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

void main() {
  runApp(MaterialApp(
    home: TratamientosScreen(),
  ));
}
