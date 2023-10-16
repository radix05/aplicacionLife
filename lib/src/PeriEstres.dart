import 'package:flutter/material.dart';

class PeriEstres extends StatefulWidget {
  const PeriEstres({Key? key}) : super(key: key);

  @override
  _PeriEstres createState() => _PeriEstres();
}

class _PeriEstres extends State<PeriEstres> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();

    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (next != _currentPage) {
        setState(() {
          _currentPage = next;
        });
      }
    });
  }

  Widget buildPageIndicator(int pageCount, int currentPage) {
    List<Widget> indicators = [];

    for (int i = 0; i < pageCount; i++) {
      indicators.add(
        Container(
          width: 15.0,
          height: 15.0,
          margin: const EdgeInsets.symmetric(horizontal: 5.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: i == currentPage
                ? const Color.fromARGB(255, 255, 0, 162)
                : const Color.fromARGB(255, 255, 152, 234),
          ),
        ),
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: indicators,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 162, 218),
        title: const Text('Estres'),
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
                Color.fromARGB(255, 255, 140, 213),
                Color.fromARGB(255, 255, 140, 240),
                Color.fromRGBO(255, 190, 242, 1),
                Color.fromARGB(255, 255, 255, 255),
              ],
            ),
          ),
          child: PageView(
            controller: _pageController,
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListView(
                  children: <Widget>[
                    principal(),
                    principalcontenido(),
                    primer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 8), // Agrega margen a la derecha
                            height: 60,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromARGB(197, 255, 255, 255),
                                  Color.fromARGB(121, 255, 255, 255),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              'Respiracion Profunda',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                left: 8), // Agrega margen a la izquierda
                            height: 60,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromARGB(197, 255, 255, 255),
                                  Color.fromARGB(121, 255, 255, 255),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              'Meditacion',
                              style: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(
                                right: 8), // Agrega margen a la derecha
                            height: 350,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromARGB(197, 255, 255, 255),
                                  Color.fromARGB(121, 255, 255, 255),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              'La respiración profunda implica inhalar lentamente a través de la nariz, llenando los pulmones de aire, y luego exhalar lentamente por la boca. Puedes practicar esto durante unos minutos para reducir la respuesta de lucha o huida del cuerpo',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(left: 8),
                            height: 350,
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 255, 255, 1),
                                  Color.fromARGB(197, 255, 255, 255),
                                  Color.fromARGB(121, 255, 255, 255),
                                ],
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15),
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                                topLeft: Radius.circular(15),
                              ),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Text(
                              '                                 La meditación implica centrar la atención en un objeto, palabra, o en la propia respiración. Esto ayuda a calmar la mente y a reducir la rumiación de pensamientos negativos.',
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    segundo(),
                    segundocontenido(),
                    tercero(),
                    tercerocontenido(),
                    cuarto(),
                    cuartocontenido(),
                    quinto(),
                    quintocontenido(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 70,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Manejo del Estres',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class principalcontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 190,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'El manejo del estrés es fundamental durante la perimenopausia para promover el bienestar emocional y físico. La perimenopausia puede estar acompañada de síntomas físicos y emocionales que pueden aumentar el estrés, como sofocos, cambios en el ciclo menstrual, alteraciones del sueño y fluctuaciones hormonales. ',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class primer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Técnicas de Relajación',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class segundo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Apoyo Social',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class segundocontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'El apoyo social es invaluable durante la perimenopausia. Hablar con amigos y familiares sobre tus preocupaciones y experiencias brinda una red de apoyo emocional. Puedes compartir tus inquietudes, buscar consejos y sentirte comprendida. El apoyo social puede reducir la sensación de aislamiento y proporcionar un espacio seguro para expresar tus emociones',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class tercero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Terapia o Consejería',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class tercerocontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'La terapia o consejería proporciona un espacio confidencial para explorar tus preocupaciones, estrés y emociones con la guía de un profesional de la salud mental. Un terapeuta puede ayudarte a desarrollar estrategias para manejar el estrés, mejorar tu bienestar emocional y abordar cualquier problema de salud mental que puedas estar experimentando',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cuarto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Evita Estresores Conocidos',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class cuartocontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Identificar las fuentes de estrés en tu vida es el primer paso para reducirlos o evitarlos. Esto puede incluir hacer cambios en tu entorno laboral, establecer límites personales saludables en relaciones conflictivas o eliminar actividades que te resulten abrumadoras. La reducción de las fuentes de estrés puede ayudar a aliviar la carga emocional',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class quinto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'Educación y Conciencia',
              style: TextStyle(
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class quintocontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 240,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            Colors.white,
            Color.fromARGB(197, 255, 255, 255),
            Color.fromARGB(121, 255, 255, 255),
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        color: Colors.white,
        borderRadius:
            BorderRadius.circular(15), // Establece el radio del borde en 15
      ),
      padding: const EdgeInsets.all(16),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(
            flex: 3,
            child: Text(
              'La educación sobre la perimenopausia es empoderadora. Cuanto más sepas sobre los cambios hormonales y físicos que ocurren durante esta etapa, mejor podrás entender tus síntomas y emociones. La conciencia te permite reconocer que lo que estás experimentando es normal y compartido por muchas otras mujeres.',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
