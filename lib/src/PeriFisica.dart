// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class PeriFisica extends StatefulWidget {
  const PeriFisica({Key? key}) : super(key: key);

  @override
  _PeriFisica createState() => _PeriFisica();
}

class _PeriFisica extends State<PeriFisica> {
  String title = 'Salud Física';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Salud Física'),
        centerTitle: true,
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
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                        color: const Color.fromARGB(255, 251, 83, 139),
                      ),
                    ),
                    padding: const EdgeInsets.all(16),
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
                Primer(),
                Segundo(),
                Tercero(),
                Cuarto(),
                Quinto(),
                Sexto(),
                Septimo(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Primer extends StatefulWidget {
  const Primer({Key? key});

  @override
  _PrimerItemState createState() => _PrimerItemState();
}

class _PrimerItemState extends State<Primer> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dieta equilibrada',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class Segundo extends StatefulWidget {
  const Segundo({Key? key}) : super(key: key);

  @override
  _Segundo createState() => _Segundo();
}

class _Segundo extends State<Segundo> {
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ejercicio regular',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
          child: Column(
            children: [
              Text(
                'Peso saludable',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
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
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Evita el aumento de peso excesivo, ya que esto puede aumentar la grasa abdominal y el riesgo de problemas de salud.',
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

class Cuarto extends StatefulWidget {
  const Cuarto({Key? key}) : super(key: key);

  @override
  _CuartoState createState() => _CuartoState();
}

class _CuartoState extends State<Cuarto> {
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
          child: Column(
            children: [
              Text(
                'Salud ósea',
                style: const TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
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
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Considera una densitometría ósea para evaluar la salud de tus huesos y discute medidas preventivas con tu médico.',
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

class Quinto extends StatefulWidget {
  const Quinto({Key? key}) : super(key: key);

  @override
  _QuintoState createState() => _QuintoState();
}

class _QuintoState extends State<Quinto> {
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
          child: Column(
            children: [
              Center(
                child: Text(
                  'Salud Arterial',
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

class Sexto extends StatefulWidget {
  const Sexto({Key? key}) : super(key: key);

  @override
  _SextoState createState() => _SextoState();
}

class _SextoState extends State<Sexto> {
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
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Manejo del estrés',
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
                        'Encuentra formas saludables de manejar el estrés, como la meditación, el yoga o la práctica de actividades que disfrutes.',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'El estrés crónico puede afectar negativamente la salud física, así que es importante encontrar formas de reducirlo.',
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
      ),
    );
  }
}

class Septimo extends StatefulWidget {
  const Septimo({Key? key}) : super(key: key);

  @override
  _SeptimoState createState() => _SeptimoState();
}

class _SeptimoState extends State<Septimo> {
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
          child: Column(
            children: [
              Center(
                child: Text(
                  'Descanso adecuado',
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
                      'Asegúrate de dormir lo suficiente cada noche para permitir que tu cuerpo se recupere y se repare.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Establece una rutina de sueño regular y crea un ambiente propicio para el descanso.',
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
