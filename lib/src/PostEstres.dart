import 'package:flutter/material.dart';

class PostEstres extends StatefulWidget {
  const PostEstres({Key? key}) : super(key: key);

  @override
  _PostEstres createState() => _PostEstres();
}

class _PostEstres extends State<PostEstres> {
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
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: ListView(
                    children: <Widget>[
                      principal(),
                      principalcontenido(),
                      primer(),
                      primercontenido(),
                      segundo(),
                      segundocontenido(),
                      tercero(),
                      tercerocontenido(),
                      cuarto(),
                      cuartocontenido(),
                      extra(),
                    ],
                  ),
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
      height: 170,
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
              'El manejo del estrés es esencial, ya que esta etapa de la vida puede venir acompañada de cambios emocionales y físicos que pueden aumentar la sensación de estrés.',
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

class primercontenido extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 320,
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
              'El apoyo social es una parte fundamental para el manejo del estrés. Mantener conexiones con amigos y familiares puede proporcionar un sistema de apoyo que te ayude a enfrentar los desafíos emocionales de la menopausia. Hablar sobre tus experiencias, preocupaciones y emociones con personas de confianza puede aliviar la carga emocional y proporcionar una sensación de respaldo. Las relaciones sólidas pueden brindarte un espacio seguro para expresarte y obtener consejos útiles.',
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
              'Estresores Conocidos',
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
      height: 265,
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
              'Identificar las fuentes de estrés en tu vida y tomar medidas para evitarlas o reducirlas es fundamental. Esto podría incluir reducir la carga de trabajo, establecer límites en las relaciones personales o eliminar actividades que te resulten abrumadoras. Al reducir la exposición a factores de estrés conocidos.',
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
              'Hábitos Saludables',
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
      height: 320,
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
              'Mantener un estilo de vida saludable es esencial para el manejo del estrés. como una dieta saludable, ejercicio regular y buen sueño',
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
              'Hobbies y Pasatiempos',
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
      height: 290,
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
              'Dedicar tiempo a actividades que disfrutes puede ser una estrategia efectiva para reducir el estrés. Los pasatiempos y actividades recreativas ofrecen una distracción saludable de las preocupaciones diarias y pueden generar una sensación de logro y satisfacción. esto puede ser una valiosa forma de relajación y liberación de estrés.',
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

class extra extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 260,
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
              'El manejo del estrés es una parte importante del cuidado de tu bienestar físico y emocional. Experimentar estrés en esta etapa de la vida es normal, puedes minimizar su impacto en tu salud y calidad de vida.',
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
