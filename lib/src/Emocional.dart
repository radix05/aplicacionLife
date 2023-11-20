import 'package:flutter/material.dart';

class Emocional extends StatefulWidget {
  const Emocional({Key? key}) : super(key: key);

  @override
  _Emocional createState() => _Emocional();
}

class _Emocional extends State<Emocional> {
  // Define the title of the screen as an instance variable
  String title = 'Salud Emocional';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Salud Emocional'),
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
                const primero(),
                const Segundo(),
                const Tercero(),
                const Cuarto(),
                const Quinto(),
                const Sexto(),
                const Septimo(),
                const Octavo(),
                const Noveno(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class primero extends StatefulWidget {
  const primero({Key? key});

  @override
  _PrimeroItemState createState() => _PrimeroItemState();
}

class _PrimeroItemState extends State<primero> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 150 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Meditación',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Practica técnicas de atención plena y meditación para reducir el estrés, aumentar la autoconciencia y mejorar el control emocional.',
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
    );
  }
}

class Segundo extends StatefulWidget {
  const Segundo({Key? key});

  @override
  _SegundoItemState createState() => _SegundoItemState();
}

class _SegundoItemState extends State<Segundo> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Apoyo de Grupos',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Únete a grupos de apoyo o comunidades en línea para compartir experiencias con otras mujeres que atraviesan la menopausia y obtener consejos y apoyo.',
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
    );
  }
}

class Tercero extends StatefulWidget {
  const Tercero({Key? key});

  @override
  _TerceroItemState createState() => _TerceroItemState();
}

class _TerceroItemState extends State<Tercero> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Descanso y relajación',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Reserva tiempo regular para relajarte, ya sea mediante baños relajantes, lectura, música o cualquier actividad que te proporcione un escape del estrés diario.',
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
    );
  }
}

class Cuarto extends StatefulWidget {
  const Cuarto({Key? key});

  @override
  _CuartoItemState createState() => _CuartoItemState();
}

class _CuartoItemState extends State<Cuarto> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Terapia hormonal',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Consulta con tu médico sobre la terapia hormonal si los síntomas de la menopausia, como los sofocos, tienen un impacto significativo en tu bienestar emocional.',
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
    );
  }
}

class Quinto extends StatefulWidget {
  const Quinto({Key? key});

  @override
  _QuintoItemState createState() => _QuintoItemState();
}

class _QuintoItemState extends State<Quinto> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 185 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Terapia cognitiva',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'La terapia cognitivo-conductual puede ayudarte a identificar y cambiar patrones de pensamiento negativos y a desarrollar estrategias para afrontar los cambios emocionales.',
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
    );
  }
}

class Sexto extends StatefulWidget {
  const Sexto({Key? key});

  @override
  _SextoItemState createState() => _SextoItemState();
}

class _SextoItemState extends State<Sexto> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 185 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Conexión con la naturaleza',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Pasa tiempo al aire libre y en la naturaleza. La exposición a la naturaleza puede tener un efecto positivo en el estado de ánimo y la salud emocional.',
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
    );
  }
}

class Septimo extends StatefulWidget {
  const Septimo({Key? key});

  @override
  _SeptimoItemState createState() => _SeptimoItemState();
}

class _SeptimoItemState extends State<Septimo> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 185 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Aprender a decir no',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Establece límites claros y aprende a decir no a compromisos y demandas que puedan aumentar tu estrés o ansiedad.',
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
    );
  }
}

class Octavo extends StatefulWidget {
  const Octavo({Key? key});

  @override
  _OctavoItemState createState() => _OctavoItemState();
}

class _OctavoItemState extends State<Octavo> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 185 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Práctica de gratitud',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Mantén un diario de gratitud donde escribas cosas por las que te sientes agradecida. Fomentar una mentalidad positiva puede mejorar la salud emocional.',
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
    );
  }
}

class Noveno extends StatefulWidget {
  const Noveno({Key? key});

  @override
  _NovenoItemState createState() => _NovenoItemState();
}

class _NovenoItemState extends State<Noveno> {
  bool isExpanded = false;

  final customPinkColor =
      const Color.fromARGB(255, 250, 250, 250); // Color rosa personalizado
  final whiteColor = Colors.white; // Color blanco

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        margin: const EdgeInsets.symmetric(
          vertical: 10,
        ),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              isExpanded ? whiteColor : customPinkColor,
              const Color.fromARGB(197, 255, 255, 255),
              const Color.fromARGB(121, 255, 255, 255),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          color: isExpanded ? customPinkColor : whiteColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        padding: const EdgeInsets.all(16),
        height: isExpanded ? 185 : 60,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Desarrollo de nuevas habilidades',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            if (isExpanded)
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Aprende nuevas habilidades o participa en actividades que te desafíen y estimulen mentalmente, lo que puede aumentar la autoestima y la satisfacción.',
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
    );
  }
}
