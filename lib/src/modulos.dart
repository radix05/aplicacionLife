import 'package:flutter/material.dart';
import 'perfil.dart';
import 'principal.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ModulosPage extends StatefulWidget {
  const ModulosPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ModulosPageState createState() => _ModulosPageState();
}

class _ModulosPageState extends State<ModulosPage> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  bool _showWelcomeButton =
      false; // Agrega un estado para mostrar/ocultar el botón

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int next = _pageController.page!.round();
      if (next != _currentPage) {
        setState(() {
          _currentPage = next;
          if (_currentPage == 2 && !_showWelcomeButton) {
            _startTimerToShowButton();
          }
        });
      }
    });

    // Verifica si el usuario ya ha visto las pantallas de bienvenida
    _checkIfWelcomeScreensShown();
  }

  // Función para iniciar el temporizador
  void _startTimerToShowButton() {
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _showWelcomeButton = true;
      });
    });
  }

  void _checkIfWelcomeScreensShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool welcomeScreensShown = prefs.getBool('welcome_screens_shown') ?? false;

    if (welcomeScreensShown) {
      // El usuario ya ha visto las pantallas de bienvenida, dirígelo a la pantalla principal
      _navigateToPrincipalScreen();
    }
  }

  void _navigateToPrincipalScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PrincipalScreen(),
      ),
    );
  }

  void _markWelcomeScreensAsShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('welcome_screens_shown', true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const PageScrollPhysics(),
                children: <Widget>[
                  buildPage(
                    Colors.red,
                    '¡Bienvenida a LifeTransition! Esta aplicación está diseñada especialmente para acompañarte en tu viaje a través de la menopausia...',
                    [
                      const Color.fromARGB(255, 251, 83, 139),
                      const Color.fromARGB(255, 255, 140, 240),
                      const Color.fromRGBO(255, 190, 242, 1),
                      Colors.white,
                    ],
                  ),
                  buildPage(
                    Colors.blue,
                    'En LifeTransition, puedes llevar un control completo de tu menopausia. Registra tus síntomas, seguimiento de tu ciclo y accede a información confiable sobre la menopausia...',
                    [
                      const Color.fromARGB(255, 251, 83, 139),
                      const Color.fromARGB(255, 255, 140, 240),
                      const Color.fromRGBO(255, 190, 242, 1),
                      Colors.white,
                    ],
                  ),
                  buildPage(
                    Colors.green,
                    'Agradecemos que confíes en LifeTransition. Esperamos que esta aplicación te sea de gran ayuda y que tengas una experiencia positiva...',
                    [
                      const Color.fromARGB(255, 251, 83, 139),
                      const Color.fromARGB(255, 255, 140, 240),
                      const Color.fromRGBO(255, 190, 242, 1),
                      Colors.white,
                    ],
                  ),
                  buildPage(
                    Colors.purple, // Nueva página al final
                    'por ultimo, solo nos queda ir a configurar tu nombre y edad, asi la aplicacion puede darte un mejor seguimiento y tratamiento de algunos sintomas',
                    [
                      const Color.fromARGB(255, 251, 83, 139),
                      const Color.fromARGB(255, 255, 140, 240),
                      const Color.fromRGBO(255, 190, 242, 1),
                      Colors.white,
                    ],
                  ),
                ],
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                    if (_currentPage == 3) {
                      _showWelcomeButton = false;
                      _startTimerToShowButton();
                    } else {
                      _showWelcomeButton = false;
                    }
                  });
                },
              ),
            ),
            if (_showWelcomeButton && _currentPage == 3)
              GestureDetector(
                onTap: () {
                  _markWelcomeScreensAsShown();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          PerfilScreen(), // Ahora redirige a PerfilScreen
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: const Text(
                    'Continuar',
                    style: TextStyle(
                      color: Color.fromARGB(255, 158, 4, 89),
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ),
            buildPageIndicator(),
          ],
        ),
      ),
    );
  }

  Widget buildPage(Color color, String text, List<Color> gradientColors) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: gradientColors,
        ),
      ),
      child: Center(
        child: Container(
          margin: const EdgeInsets.all(50.0), // Márgenes alrededor del texto
          child: Text(
            text, // Aquí va la coma para separar los argumentos
            style: const TextStyle(
              fontSize: 25.0,
              color: Colors.white,
              height: 1.5,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }

  Widget buildPageIndicator() {
    return Container(
      color: Colors.white, // Agrega el color de fondo blanco
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          for (int i = 0; i < 4; i++) // Cambia 3 al número total de páginas
            Container(
              width: 10.0,
              height: 50.0,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _currentPage == i
                    ? const Color.fromARGB(255, 255, 0, 162)
                    : const Color.fromARGB(255, 255, 152, 234),
              ),
            ),
        ],
      ),
    );
  }
}
