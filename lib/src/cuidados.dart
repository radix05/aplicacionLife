import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'edadProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CuidadosScreen extends StatefulWidget {
  const CuidadosScreen({Key? key}) : super(key: key);

  @override
  _CuidadosScreenState createState() => _CuidadosScreenState();
}

class _CuidadosScreenState extends State<CuidadosScreen> {
  int edad = 0;

  @override
  void initState() {
    super.initState();
    _cargarEdadUsuario();
  }

  Future<void> _cargarEdadUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? edadGuardada = prefs.getInt('edad');

    setState(() {
      edad = edadGuardada ?? 0;
    });

    Future.delayed(Duration.zero, () {
      final edadProvider = Provider.of<EdadProvider>(context, listen: false);
      edadProvider.actualizarEdad(edad);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Cuidados'),
      ),
      body: ChangeNotifierProvider<EdadProvider>(
        create: (context) => EdadProvider(),
        child: UserCarePage(),
      ),
    );
  }
}

class UserCarePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String consejosCuidados = '';

    final edadProvider = Provider.of<EdadProvider>(context);
    final edad = edadProvider.edad;

    if (edad >= 35 && edad <= 45) {
      consejosCuidados = 'Consejos para personas de 35 a 45 años';
    } else if (edad >= 46 && edad <= 55) {
      consejosCuidados = 'Consejos para personas de 46 a 55 años';
    } else if (edad >= 56) {
      consejosCuidados = 'Consejos para personas de 56 años en adelante';
    } else {
      consejosCuidados = 'Consejos generales de cuidados';
    }

    return Container(
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
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            padding: const EdgeInsets.all(16.0),
            children: <Widget>[
              const SizedBox(height: 20),
              const Text(
                'Nombre del Usuario: Usuario',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(height: 20),
              const Text(
                'Consejos de cuidados:',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text(
                consejosCuidados,
                style: const TextStyle(fontSize: 16.0),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
