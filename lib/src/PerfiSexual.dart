import 'package:flutter/material.dart';

class PeriSexual extends StatefulWidget {
  const PeriSexual({Key? key}) : super(key: key);

  @override
  _PeriSexual createState() => _PeriSexual();
}

class _PeriSexual extends State<PeriSexual> {
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
                const primer(),
                const segundo(),
                const tercero(),
                const cuarto(),
                const quinto(),
                const sexto(),
                const septimo(),
                const octavo(),
                const noveno(),
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
          height: isExpanded ? 200 : 60, // Aumenta la altura
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
                      'Habla abierta y honestamente con tu pareja sobre tus necesidades y preocupaciones sexuales. La comunicación puede ayudar a fortalecer la intimidad y la conexión emocional.',
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
          height: isExpanded ? 200 : 60, // Aumenta la altura
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
                      'La sequedad vaginal es común durante la perimenopausia. Utiliza lubricantes o humectantes vaginales de venta libre para aliviar la incomodidad durante las relaciones sexuales.',
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
                      'Consulta a tu médico sobre la posibilidad de utilizar terapia hormonal local, como cremas o anillos vaginales, para abordar la sequedad vaginal y mejorar la comodidad.',
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
          height: isExpanded ? 200 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Practicar el sexo regularmente',
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
                      ' Mantener relaciones sexuales regularmente puede ayudar a mantener la salud sexual y prevenir la atrofia vaginal. La actividad sexual puede aumentar el flujo sanguíneo y mejorar la lubricación.',
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
                'Terapia sexual o consejería',
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
                      ' Si experimentas dificultades sexuales significativas, considera la terapia sexual o la consejería con un terapeuta sexual. Esto puede ayudarte a abordar problemas de deseo sexual, dolor durante el sexo o cualquier otro problema sexual.',
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
          height: isExpanded ? 160 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Control de la anticoncepción',
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
                      'Si no deseas un embarazo durante la perimenopausia, asegúrate de utilizar un método anticonceptivo adecuado, ya que la menstruación puede volverse irregular.',
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
          height: isExpanded ? 140 : 60, // Aumenta la altura
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
                      'Presta atención a la higiene íntima adecuada para evitar infecciones y mantener la comodidad sexual. ',
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
          height: isExpanded ? 160 : 60, // Aumenta la altura
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centro verticalmente
            children: [
              const Text(
                'Salud general y bienestar:',
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
                      'Mantén una buena salud general mediante una dieta equilibrada, ejercicio regular y control del estrés. Esto puede tener un impacto positivo en la salud sexual.',
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
                'Consultas médicas regulares',
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
                      'Programa chequeos ginecológicos regulares para monitorear la salud reproductiva y hablar con tu médico sobre cualquier problema sexual o reproductivo.',
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
