import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<int>(
      future:
          _getEdad(), // Obtén la edad desde SharedPreferences o la fuente que prefieras
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final edad = snapshot.data;
          if (edad != null) {
            if (edad >= 35 && edad <= 45) {
              return PantallaEdades35a45();
            } else if (edad >= 46 && edad <= 55) {
              return PantallaEdades46a55();
            } else if (edad >= 56) {
              return PantallaEdades56Plus();
            } else {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(255, 255, 165, 231),
                  title: const Text('Información'),
                ),
                body: const Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Pantalla predeterminada para otras edades',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          } else {
            return Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromARGB(255, 255, 165, 231),
                title: const Text('Información'),
              ),
              body: const Center(
                child: Text('No se encontró la edad'),
              ),
            );
          }
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: const Color.fromARGB(255, 255, 165, 231),
              title: const Text('Información'),
            ),
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }

  Future<int> _getEdad() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('edad') ?? 0;
  }
}

class PantallaEdades35a45 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Información'),
      ),
      body: Container(
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
        child: ListView(
          children: <Widget>[
            PeriTitulo(),
            Peri1(),
            Peri2(),
          ],
        ),
      ),
    );
  }
}

class PantallaEdades46a55 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Información'),
      ),
      body: Container(
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
        child: ListView(
          children: <Widget>[MenoTitulo(), Meno1(), Meno2()],
        ),
      ),
    );
  }
}

class PantallaEdades56Plus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Información'),
      ),
      body: Container(
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
        child: ListView(
          children: <Widget>[
            POSTTitulo(),
            POST1(),
            POST2(),
          ],
        ),
      ),
    );
  }
}

class PeriTitulo extends StatelessWidget {
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
              'Perimenopausia, ¿Que es?',
              style: TextStyle(
                fontSize: 24.0,
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

class Peri1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 220,
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
              'La perimenopausia significa "alrededor de la menopausia" y se refiere al tiempo durante el cual el cuerpo produce la natural transición a la menopausia marca el final de los años reproductivos. La perimenopausia también se llama la transición menopáusica.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Peri2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 220,
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
              'Las mujeres desde la perimenopausia diferentes edades. Usted puede notar signos de progresión hacia la menopausia, tales como irregularidad menstrual, en algún momento en su 40s. Pero algunas mujeres notan cambios tan pronto como mediados de los años 30.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MenoTitulo extends StatelessWidget {
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
              'Menopausia, ¿Que es?',
              style: TextStyle(
                fontSize: 24.0,
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

class Meno1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 220,
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
              'La menopausia es la época de la vida de una mujer en la cual deja de tener menstruaciones. Suele ocurrir naturalmente, con mayor frecuencia después de los 45 años. La menopausia se produce porque los ovarios de la mujer dejan de producir las hormonas estrógeno y progesterona.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Meno2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 220,
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
              'Una mujer llega a la menopausia cuando no tiene un período menstrual durante un año. Los cambios y los síntomas pueden empezar varios años antes. Éstos incluyen:',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class POSTTitulo extends StatelessWidget {
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
              'Postenopausia, ¿Que es?',
              style: TextStyle(
                fontSize: 24.0,
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

class POST1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 220,
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
              'La postmenopausia es la fase que comprende varios años después de la menopausia, es decir, del cese de la regla. Esta etapa comienza en diferentes momentos según cada mujer y dura hasta los 65 años aproximadamente.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class POST2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      width: double.infinity,
      height: 280,
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
              'Sin embargo, la duración de la postmenopausia también depende del momento en el que llega la menopausia, por lo que hay variaciones entre mujeres. Por ejemplo, si el cese de la regla ocurre a los 50 años, el periodo de perimenopausia durará 15 años. En cambio, si la menopausia llega a los 55 años, la duración de la postmenopausia será de 10 años.',
              style: TextStyle(
                fontSize: 22.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
