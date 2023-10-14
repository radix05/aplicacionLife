import 'package:flutter/material.dart';

class PostFisica extends StatefulWidget {
  const PostFisica({Key? key}) : super(key: key);

  @override
  _PostFisica createState() => _PostFisica();
}

class _PostFisica extends State<PostFisica> {
  // Define the title of the screen as an instance variable
  String title = 'Salud Fisica';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Salud Fisica'),
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Ejercicio regular',
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
                      'Mantén una rutina de ejercicio que incluya actividades de resistencia, como caminar, nadar o levantar pesas. El ejercicio ayuda a mantener la densidad ósea, la fuerza muscular y el equilibrio, lo que puede prevenir caídas y fracturas.',
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
          height: isExpanded ? 210 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Dieta saludable',
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
                      'Consume una dieta rica en calcio y vitamina D para mantener la salud ósea. Los productos lácteos, los vegetales de hojas verdes y los pescados grasos son buenas fuentes de estos nutrientes. También, limita la ingesta de azúcar y alimentos procesados.',
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
          height: isExpanded ? 180 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Control de peso',
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
                      'Mantén un peso saludable para reducir la presión sobre las articulaciones y disminuir el riesgo de enfermedades como la diabetes tipo 2 y enfermedades cardiovasculares.',
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
          height: isExpanded ? 190 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Exámenes de salud regulares',
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
                      'Continúa con exámenes médicos regulares, que incluyan pruebas de densidad ósea, control de la presión arterial y análisis de sangre para asegurarte de que estás en buena salud.',
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
          height: isExpanded ? 190 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Salud cardiovascular',
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
                      'Mantén un estilo de vida que promueva la salud cardiovascular. Esto incluye una dieta baja en grasas saturadas y trans, ejercicio regular y evitar el tabaco.',
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
          height: isExpanded ? 170 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Dormir adecuadamente',
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
                      ' La calidad del sueño es fundamental para la salud física y mental. Establece una rutina de sueño regular y crea un ambiente adecuado para el descanso.  ',
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
          height: isExpanded ? 150 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Hidratación',
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
                      ' Bebe suficiente agua para mantener la hidratación adecuada, lo que es esencial para la salud en general.',
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
          height: isExpanded ? 170 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Prevención de caídas',
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
                      'Asegura tu hogar para prevenir caídas. Elimina obstáculos, usa alfombras antideslizantes y considera la instalación de barras de apoyo en el baño si es necesario.',
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
          height: isExpanded ? 160 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Protección solar',
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
                      'Protege tu piel de los daños del sol usando protector solar y ropa protectora para prevenir el envejecimiento prematuro y el riesgo de cáncer de piel.',
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
          height: isExpanded ? 160 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Prevención de enfermedades',
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
                      'Mantén al día tus vacunas y sigue las recomendaciones médicas para la prevención de enfermedades específicas, como la osteoporosis y el cáncer.  ',
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
