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
                const segundo(),
                const tercero(),
                const cuarto(),
                const quinto(),
                const sexto(),
                const septimo(),
                const octavo(),
                const noveno(),
                const decimo(),
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
  _primeroItemState createState() => _primeroItemState();
}

class _primeroItemState extends State<primero> {
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
          height: isExpanded ? 150 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Mindfulness y meditación',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class segundo extends StatefulWidget {
  const segundo({Key? key});

  @override
  _segundoItemState createState() => _segundoItemState();
}

class _segundoItemState extends State<segundo> {
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
          height: isExpanded ? 170 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Apoyo de grupos de menopausia',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class tercero extends StatefulWidget {
  const tercero({Key? key});

  @override
  _terceroItemState createState() => _terceroItemState();
}

class _terceroItemState extends State<tercero> {
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
          height: isExpanded ? 170 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Descanso y relajación',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  children: [
                    SizedBox(height: 10),
                    Text(
                      ' Reserva tiempo regular para relajarte, ya sea mediante baños relajantes, lectura, música o cualquier actividad que te proporcione un escape del estrés diario.',
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

class cuarto extends StatefulWidget {
  const cuarto({Key? key});

  @override
  _cuartoItemState createState() => _cuartoItemState();
}

class _cuartoItemState extends State<cuarto> {
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
          height: isExpanded ? 170 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Terapia hormonal',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class quinto extends StatefulWidget {
  const quinto({Key? key});

  @override
  _quintoItemState createState() => _quintoItemState();
}

class _quintoItemState extends State<quinto> {
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
          height: isExpanded ? 185 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Psicoterapia cognitivo-conductual',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class sexto extends StatefulWidget {
  const sexto({Key? key});

  @override
  _sextoItemState createState() => _sextoItemState();
}

class _sextoItemState extends State<sexto> {
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
          height: isExpanded ? 185 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Conexión con la naturaleza',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class septimo extends StatefulWidget {
  const septimo({Key? key});

  @override
  _septimoItemState createState() => _septimoItemState();
}

class _septimoItemState extends State<septimo> {
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
          height: isExpanded ? 185 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Aprender a decir no',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class octavo extends StatefulWidget {
  const octavo({Key? key});

  @override
  _octavoItemState createState() => _octavoItemState();
}

class _octavoItemState extends State<octavo> {
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
          height: isExpanded ? 185 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Práctica de gratitud',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class noveno extends StatefulWidget {
  const noveno({Key? key});

  @override
  _novenoItemState createState() => _novenoItemState();
}

class _novenoItemState extends State<noveno> {
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
          height: isExpanded ? 185 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Desarrollo de nuevas habilidades',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
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
      ),
    );
  }
}

class decimo extends StatefulWidget {
  const decimo({Key? key});

  @override
  _decimoItemState createState() => _decimoItemState();
}

class _decimoItemState extends State<decimo> {
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Exploración de terapias alternativas',
                style: TextStyle(
                  fontSize: 22.0, // Aumenta el tamaño de la fuente
                  fontWeight: FontWeight.bold, // Pone en negrita
                  color: Colors.black,
                ),
              ),
              if (isExpanded)
                const Column(
                  mainAxisAlignment:
                      MainAxisAlignment.center, // Centro verticalmente
                  children: [
                    SizedBox(height: 10),
                    Text(
                      'Algunas mujeres encuentran alivio de los síntomas emocionales de la menopausia a través de terapias alternativas como la acupuntura, la acupresión o la fitoterapia. Consulta con un profesional de la salud sobre opciones seguras y efectivas.',
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