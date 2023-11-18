import 'package:flutter/material.dart';

class ContactameScreen extends StatelessWidget {
  const ContactameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Contáctame'),
      ),
      extendBody: true,
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
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Para más información puedes buscarme en:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildCircularImage(' Facebook:\n Jhonatan Jose Rodas Ruiz',
                        'images/Face.png'),
                    const SizedBox(width: 20), // Espacio entre las imágenes
                    _buildCircularImage2(
                        '\n Correo Electrónico:\n rodasruiz05@gmail.com',
                        'images/correo.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCircularImage(String label, String imagePath) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 210, // Ajusta el tamaño de la imagen según sea necesario
            height: 210,
            fit: BoxFit.cover, // Asegura que la imagen cubra todo el círculo
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center, // Centra el texto
        ),
      ],
    );
  }

  Widget _buildCircularImage2(String label, String imagePath) {
    return Column(
      children: [
        ClipOval(
          child: Image.asset(
            imagePath,
            width: 180, // Ajusta el tamaño de la imagen según sea necesario
            height: 180,
            fit: BoxFit.cover, // Asegura que la imagen cubra todo el círculo
          ),
        ),
        const SizedBox(height: 10),
        Text(
          label,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center, // Centra el texto
        ),
      ],
    );
  }
}
