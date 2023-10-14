import 'package:flutter/material.dart';

class Sexual extends StatefulWidget {
  const Sexual({Key? key}) : super(key: key);

  @override
  _Sexual createState() => _Sexual();
}

class _Sexual extends State<Sexual> {
  // Define the title of the screen as an instance variable
  String title = 'Salud Sexual';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Salud Sexual'),
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
                const segunda(),
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Comunicación abierta',
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
                      'Habla con tu pareja sobre los cambios en tu cuerpo y tus necesidades sexuales. La comunicación abierta es clave para mantener una vida sexual saludable durante la menopausia.',
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

class segunda extends StatefulWidget {
  const segunda({Key? key});

  @override
  _segundaItemState createState() => _segundaItemState();
}

class _segundaItemState extends State<segunda> {
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
                'Lubricantes y humectantes',
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
                      'La sequedad vaginal es común durante la menopausia. Considera el uso de lubricantes o humectantes vaginales para aliviar la sequedad y facilitar la intimidad sexual.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Ejercicio pélvico',
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
                      'Los ejercicios de Kegel pueden fortalecer los músculos del suelo pélvico y mejorar la función sexual. Practicarlos de manera regular puede ayudar a mantener la salud sexual.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Estimulación sexual',
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
                      ' Explora diferentes formas de estimulación y fantasías sexuales para mantener el interés y la satisfacción sexual.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Higiene íntima',
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
                      'Mantén una buena higiene íntima y considera el uso de productos adecuados para evitar irritaciones o infecciones.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Prevención de infecciones',
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
                      ' Si tienes múltiples parejas sexuales, sigue practicando relaciones sexuales seguras y considera el uso de condones para prevenir infecciones de transmisión sexual.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Consulta con un especialista',
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
                      ' Si experimentas cambios significativos en la libido, disfunción sexual u otros problemas relacionados con la menopausia, considera la consulta con un ginecólogo, terapeuta sexual o consejero de pareja especializado en salud sexual en la menopausia.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Mantenimiento de la salud ginecológica',
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
                      'Continúa programando exámenes ginecológicos regulares para monitorear la salud vaginal y discute cualquier problema con tu médico.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Control de los síntomas menopáusicos:',
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
                      ' Si experimentas síntomas incómodos, como sofocos o sudoración nocturna, busca tratamientos que puedan aliviar estos síntomas, ya que pueden afectar tu bienestar sexual.',
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
                'Cuidado de la salud mental',
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
                      'La salud mental también desempeña un papel importante en la salud sexual. Si experimentas problemas emocionales o estrés, busca apoyo y tratamiento para mantener un bienestar emocional que influya positivamente en tu vida sexual durante la menopausia.',
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
