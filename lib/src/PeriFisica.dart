// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PeriFisica extends StatefulWidget {
  const PeriFisica({Key? key}) : super(key: key);

  @override
  _PeriFisica createState() => _PeriFisica();
}

class _PeriFisica extends State<PeriFisica> {
  // Define the title of the screen as an instance variable
  String title = 'Salud Física';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Salud Física'),
        centerTitle: true, // Centra el título en la AppBar
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
                Color.fromARGB(255, 255, 140, 240),
                Color.fromARGB(255, 251, 83, 139),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView(
              children: <Widget>[
                const SizedBox(height: 20),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent, // Transparent background
                      borderRadius:
                          BorderRadius.circular(15.0), // Rounded borders
                      border: Border.all(
                        color: const Color.fromARGB(
                            255, 251, 83, 139), // Pink color
                      ),
                    ),
                    padding:
                        const EdgeInsets.all(16), // Space inside the container
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18.0,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                primer(),
                segundo(),
                Tercero(),
                cuarto(),
                quinto(),
                sexto(),
                septimo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class primer extends StatefulWidget {
  const primer({Key? key});

  @override
  _primerItemState createState() => _primerItemState();
}

class _primerItemState extends State<primer> {
  bool isExpanded = false;

  final customPinkColor =
      Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 260 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              Text(
                'Mantener una dieta equilibrada',
                style: const TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Consume una variedad de alimentos, incluyendo frutas, verduras, granos enteros, proteínas magras y lácteos bajos en grasa.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Asegúrate de obtener suficiente calcio y vitamina D para mantener la salud ósea.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Limita la ingesta de azúcares refinados, grasas saturadas y alimentos procesados.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class segundo extends StatefulWidget {
  const segundo({Key? key}) : super(key: key);

  @override
  _segundo createState() => _segundo();
}

class _segundo extends State<segundo> {
  bool isExpanded = false;

  final customPinkColor =
      Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 260 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              Text(
                'Ejercicio regular',
                style: const TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Incorpora actividades físicas como caminar, nadar, andar en bicicleta o ejercicios aeróbicos en tu rutina.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'También considera ejercicios de resistencia para fortalecer los músculos y mejorar la densidad ósea.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Tercero extends StatefulWidget {
  const Tercero({Key? key}) : super(key: key);

  @override
  _TerceroState createState() => _TerceroState();
}

class _TerceroState extends State<Tercero> {
  bool isExpanded = false;

  final customPinkColor =
      Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 205 : 60,
          child: Column(
            children: [
              Text(
                'Mantenimiento de un peso saludable',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold, // Poner en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Controla tu peso a través de una dieta balanceada y ejercicio regular.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Evita el aumento de peso excesivo, ya que esto puede aumentar la grasa abdominal y el riesgo de problemas de salud.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class cuarto extends StatefulWidget {
  const cuarto({Key? key}) : super(key: key);

  @override
  _cuartoState createState() => _cuartoState();
}

class _cuartoState extends State<cuarto> {
  bool isExpanded = false;

  final customPinkColor =
      Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 220 : 60,
          child: Column(
            children: [
              Text(
                'Salud ósea',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold, // Poner en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Asegúrate de obtener suficiente calcio y vitamina D a través de la dieta o suplementos si es necesario.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Considera una densitometría ósea para evaluar la salud de tus huesos y discute medidas preventivas con tu médico.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class quinto extends StatefulWidget {
  const quinto({Key? key}) : super(key: key);

  @override
  _quintoState createState() => _quintoState();
}

class _quintoState extends State<quinto> {
  bool isExpanded = false;

  final customPinkColor = Color.fromARGB(255, 250, 250, 250);
  final whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 225 : 85,
          child: Column(
            children: [
              Center(
                // Centra verticalmente
                child: Text(
                  'Presión arterial y el colesterol',
                  style: const TextStyle(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
              if (isExpanded)
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Realiza exámenes médicos regulares para controlar tu presión arterial y tus niveles de colesterol.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Adopta un estilo de vida saludable que incluya una dieta baja en sodio y grasas saturadas.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class sexto extends StatefulWidget {
  const sexto({Key? key}) : super(key: key);

  @override
  _sextoState createState() => _sextoState();
}

class _sextoState extends State<sexto> {
  bool isExpanded = false;

  final customPinkColor =
      Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 170 : 60,
          child: Column(
            children: [
              Text(
                'Hábitos saludables:',
                style: const TextStyle(
                  fontSize: 22.0, // Tamaño de fuente 22
                  fontWeight: FontWeight.bold, // Poner en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Evita el consumo de tabaco y reduce el consumo de alcohol si es necesario.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Limita el estrés a través de técnicas de relajación como la meditación o el yoga.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class septimo extends StatefulWidget {
  const septimo({Key? key}) : super(key: key);

  @override
  _septimoState createState() => _septimoState();
}

class _septimoState extends State<septimo> {
  bool isExpanded = false;

  final customPinkColor = Color.fromARGB(255, 250, 250, 250);
  final whiteColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                isExpanded ? whiteColor : customPinkColor,
                Color.fromARGB(197, 255, 255, 255),
                Color.fromARGB(121, 255, 255, 255),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            color: isExpanded ? customPinkColor : whiteColor,
            borderRadius: BorderRadius.circular(15.0),
          ),
          padding: const EdgeInsets.all(16),
          height: isExpanded ? 170 : 60,
          child: Column(
            children: [
              Text(
                'Mantén una rutina de sueño regular',
                style: const TextStyle(
                  fontSize: 22.0, // Tamaño de fuente 22
                  fontWeight: FontWeight.bold, // Poner en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  children: const [
                    SizedBox(height: 10),
                    Text(
                      'Establece horarios regulares para acostarte y despertarte.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Evita la cafeína y la exposición a pantallas electrónicas antes de dormir.',
                      style: TextStyle(
                        fontSize: 20.0, // Tamaño de fuente 20
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
