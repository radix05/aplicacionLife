import 'package:LifeTransition/src/Informacion.dart';
import 'package:flutter/material.dart';
import 'perfil.dart';
import 'botchat.dart';
import 'sintomas.dart';
import 'estilovida.dart';
import 'tratamientos.dart';
import 'cuidados.dart';
import 'contacto.dart';
import 'calendario.dart';

class PrincipalScreen extends StatefulWidget {
  PrincipalScreen({Key? key}) : super(key: key);

  @override
  _PrincipalScreenState createState() => _PrincipalScreenState();
}

class _PrincipalScreenState extends State<PrincipalScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        leading: Builder(
          builder: (context) {
            return IconButton(
              color: const Color.fromARGB(255, 255, 0, 187),
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PerfilScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(255, 190, 242, 1),
              Colors.white,
              Color.fromRGBO(255, 190, 242, 1),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: <Widget>[
                    const DivConTextoSmall(
                      texto: 'Definiciones',
                      navigateTo: InfoScreen(),
                    ),
                    DivConTextoGroup(
                      screenWidth: screenWidth,
                      items: const [
                        DivConTexto(
                          texto: 'Síntomas',
                          imagePath: 'images/sintomas.png',
                          navigateTo: SintomasScreen(),
                        ),
                        DivConTexto(
                          texto: 'Cuidados',
                          imagePath: 'images/cuidados.png',
                          navigateTo: CuidadosScreen(),
                        ),
                      ],
                    ),
                    DivConTextoGroup(
                      screenWidth: screenWidth,
                      items: const [
                        DivConTexto(
                          texto: 'Estilo de Vida',
                          imagePath: 'images/estilo-de-vida.png',
                          navigateTo: EstiloVidaScreen(),
                        ),
                        DivConTexto(
                          texto: 'Tratamientos',
                          imagePath: 'images/tratamientos.png',
                          navigateTo: TratamientosScreen(),
                        ),
                      ],
                    ),
                    DivConTextoSmall(
                      texto: 'Preguntas Comunes',
                      navigateTo: BotChatPage(),
                    ),
                    DivConTextoSmall(
                      texto: 'Calendario',
                      navigateTo: Calendario(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 120, 244),
              ),
              child: const Center(
                child: Text(
                  'Menu Principal',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ListTile(
              title: const Center(
                child: Text(
                  'Configuraciones',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PerfilScreen(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text(
                  'Sintomas',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SintomasScreen(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text(
                  'Cuidados',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CuidadosScreen(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text(
                  'Tratamientos',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TratamientosScreen(),
                  ),
                );
              },
            ),
            const Divider(),
            ListTile(
              title: const Center(
                child: Text(
                  'Estilo de Vida',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const EstiloVidaScreen(),
                  ),
                );
              },
            ),
            const Spacer(),
            Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: const Center(
                  child: Text(
                    'Contactame',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ContactameScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DivConTexto extends StatelessWidget {
  final String texto;
  final String imagePath;
  final Widget navigateTo;

  const DivConTexto({
    Key? key,
    required this.texto,
    required this.imagePath,
    required this.navigateTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigateTo,
          ),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(197, 255, 255, 255),
              Color.fromARGB(121, 255, 255, 255),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // Ajusta la propiedad fit aquí
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
              fit: BoxFit.contain, // O ajusta a tus necesidades
            ),
            const SizedBox(height: 10),
            Text(
              texto,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DivConTextoSmall extends StatelessWidget {
  final String texto;
  final Widget navigateTo;

  const DivConTextoSmall({
    Key? key,
    required this.texto,
    required this.navigateTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => navigateTo,
          ),
        );
      },
      child: Container(
        width: 410,
        height: 70,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50.0),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 255, 255, 255),
              Color.fromARGB(197, 255, 255, 255),
              Color.fromARGB(121, 255, 255, 255),
            ],
          ),
        ),
        child: Center(
          child: Text(
            texto,
            style: const TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 25.0,
            ),
          ),
        ),
      ),
    );
  }
}

class DivConTextoGroup extends StatelessWidget {
  final double screenWidth;
  final List<Widget> items;

  const DivConTextoGroup({
    Key? key,
    required this.screenWidth,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double spacing = 20.0; // Espacio entre elementos

    // Calcula el número de elementos que caben en la pantalla
    int itemCount = (screenWidth / (200 + spacing)).floor();

    // Calcula el espacio adicional para distribuir entre los elementos
    double additionalSpace = (screenWidth - itemCount * 200) / (itemCount - 1);

    return Wrap(
      alignment: WrapAlignment.center,
      spacing: additionalSpace,
      runSpacing: spacing,
      children: items,
    );
  }
}
