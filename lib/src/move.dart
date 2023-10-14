import 'package:flutter/material.dart';
import 'modulos.dart';

class Move extends StatefulWidget {
  const Move({Key? key}) : super(key: key);

  @override
  _MovePageState createState() => _MovePageState();
}

class _MovePageState extends State<Move> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    _startBlinking();
  }

  void _startBlinking() {
    Future.delayed(const Duration(milliseconds: 1000), () {
      if (mounted) {
        setState(() {
          _isVisible = !_isVisible;
        });
        _startBlinking();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Fondo con degradado
          Container(
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
          ),
          // Contenido central
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Espacio vacío para separación entre la parte superior y el CircleAvatar
                const SizedBox(height: 100.0),

                // Texto que parpadea
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ModulosPage()),
                    );
                  },
                  child: AnimatedOpacity(
                    opacity: _isVisible ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 1000),
                    child: const Text(
                      'Toca para Continuar',
                      style: TextStyle(
                        color: Color.fromARGB(191, 255, 255, 255),
                        fontSize: 50.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // CircleAvatar con la imagen, posicionado en la parte superior
          const Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: Center(
              child: CircleAvatar(
                radius: 150.0,
                backgroundColor: Colors.transparent,
                backgroundImage: AssetImage('images/logo_png.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
