import 'package:aplicacion_principal/src/Informacion.dart';
import 'package:flutter/material.dart';
import 'perfil.dart';
import 'botchat.dart';
import 'sintomas.dart';
import 'estilovida.dart';
import 'tratamientos.dart';
import 'cuidados.dart';
import 'contacto.dart';

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
              Colors.white,
              Color.fromRGBO(255, 190, 242, 1),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          resizeToAvoidBottomInset: false,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 20),
                Wrap(
                  alignment: WrapAlignment.start,
                  spacing: 10.0,
                  runSpacing: 10.0,
                  children: <Widget>[
                    const DivConTextoSmall(
                        texto: 'Definiciones', navigateTo: InfoScreen()),
                    const DivConTexto(
                      texto: 'Síntomas',
                      imagePath: 'images/sintomas.png',
                      navigateTo: SintomasScreen(),
                    ),
                    const DivConTexto(
                      texto: 'Cuidados',
                      imagePath: 'images/cuidados.png',
                      navigateTo: CuidadosScreen(),
                    ),
                    const DivConTexto(
                      texto: 'Estilo de Vida',
                      imagePath: 'images/estilo-de-vida.png',
                      navigateTo: EstiloVidaScreen(),
                    ),
                    const DivConTexto(
                      texto: 'Tratamientos',
                      imagePath: 'images/tratamientos.png',
                      navigateTo: TratamientosScreen(),
                    ),
                    DivConTextoSmall(
                        texto: 'Preguntas Comunes', navigateTo: BotChatPage()),
                  ],
                ),
              ],
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
                      builder: (context) => const contactameScreen(),
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
            Image.asset(
              imagePath,
              width: 80,
              height: 80,
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
          // Centro el contenido verticalmente
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
