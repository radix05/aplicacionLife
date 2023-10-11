// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'edadProvider.dart'; // Importa la clase que definiste para el EdadProvider

class EditarPerfilScreen extends StatefulWidget {
  const EditarPerfilScreen({Key? key}) : super(key: key);

  @override
  _EditarPerfilScreenState createState() => _EditarPerfilScreenState();
}

class _EditarPerfilScreenState extends State<EditarPerfilScreen> {
  TextEditingController nombreController = TextEditingController();
  int edad = 0; // Nueva variable para la edad

  @override
  void initState() {
    super.initState();
    _cargarDatosUsuario();
  }

  void _cargarDatosUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String nombreGuardado = prefs.getString('nombre') ?? 'Nombre del Usuario';
    int? edadGuardada = prefs.getInt('edad');

    setState(() {
      nombreController.text = nombreGuardado;
      edad = edadGuardada ?? 0; // Actualiza la nueva variable 'edad'
    });
  }

  void _guardarCambios() async {
    String nuevoNombre = nombreController.text;

    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nombre', nuevoNombre);
    await prefs.setInt(
        'edad', edad); // Guarda la nueva variable 'edad' en SharedPreferences

    Navigator.pop(context, {'nombre': nuevoNombre, 'edad': edad.toString()});
  }

  void _mostrarSelectorEdad(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Selecciona tu edad'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(66, (index) {
                int nuevaEdad =
                    35 + index; // Utiliza una nueva variable 'nuevaEdad'
                return ListTile(
                  title: Text(nuevaEdad.toString()), // Utiliza 'nuevaEdad'
                  onTap: () {
                    setState(() {
                      edad = nuevaEdad; // Actualiza la nueva variable 'edad'
                    });
                    Navigator.pop(context);
                  },
                );
              }),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Editar Perfil'),
      ),
      extendBody: true,
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextField(
                  controller: nombreController,
                  decoration: const InputDecoration(labelText: 'Nombre'),
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z\s]')),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text('Edad: '),
                    Text(edad.toString()), // Mostrar la edad actual
                    IconButton(
                      icon: const Icon(Icons.edit),
                      onPressed: () {
                        _mostrarSelectorEdad(context);
                      },
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _guardarCambios();
                    },
                    child: const Text('Guardar Cambios'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
