import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'edadProvider.dart'; // Asegúrate de importar tu EdadProvider

class Graficas extends StatefulWidget {
  final Map<String, int> symptomsFrequency;

  Graficas({Key? key, required this.symptomsFrequency}) : super(key: key);

  @override
  _GraficasState createState() => _GraficasState();
}

class _GraficasState extends State<Graficas> {
  bool _mostrarTexto = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ocultarTexto();
    });
  }

  void _ocultarTexto() {
    if (mounted) {
      setState(() {
        _mostrarTexto = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        EdadProvider.saveSymptomsFrequency(widget.symptomsFrequency);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 165, 231),
          title: const Text('Gráficas'),
        ),
        body: Center(
          child: Container(
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
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 16), // Ajusta este valor según tus necesidades
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      _mostrarGraficasTodos(context);
                      _ocultarTexto();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(182, 245, 64, 236),
                      disabledBackgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Mostrar Gráficas de Todos',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                      height: 10), // Ajusta este valor según tus necesidades
                  if (_mostrarTexto)
                    const Text(
                      'Si las gráficas no están actualizadas, por favor presiona el botón de generar.',
                      style: TextStyle(color: Colors.red),
                    ),
                  const SizedBox(
                      height: 10), // Ajusta este valor según tus necesidades
                  const Text(
                    'Frecuencia de Síntomas',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                      height: 10), // Ajusta este valor según tus necesidades
                  BarChart(),
                  const SizedBox(
                      height: 10), // Ajusta este valor según tus necesidades
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(182, 245, 64, 236),
                      disabledBackgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      minimumSize: Size(double.infinity, 50),
                    ),
                    child: const Text(
                      'Volver al Calendario',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _mostrarGraficasTodos(BuildContext context) {
    final allSymptoms = Provider.of<EdadProvider>(context, listen: false)
        .symptomsSelections
        .values
        .expand((list) => list)
        .toList();

    final allSymptomsFrequency =
        EdadProvider.calculateSymptomsFrequency({'allSymptoms': allSymptoms});

    Provider.of<EdadProvider>(context, listen: false)
        .actualizarSymptomsSelections({'allSymptoms': allSymptoms});

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => Graficas(symptomsFrequency: allSymptomsFrequency),
      ),
    );
  }
}

class BarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<EdadProvider>(
      builder: (context, edadProvider, _) {
        final symptomsFrequency = edadProvider.symptomsFrequency;

        return Container(
          height: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: symptomsFrequency.keys.map((symptom) {
              final barHeight =
                  (symptomsFrequency[symptom]?.toDouble() ?? 0) * 2;
              final symptomCount = symptomsFrequency[symptom];

              print(
                  'Symptom: $symptom, Frequency: $symptomCount, Bar Height: $barHeight');
              return Column(
                children: [
                  const SizedBox(
                    height: 5,
                  ), // Añadido espacio entre el texto y la barra
                  Container(
                    height: barHeight,
                    width: 75,
                    color: Colors.blue, // Cambiado a un color sólido
                  ),
                  const SizedBox(
                      height: 5), // Añadido espacio entre la barra y el texto
                  Text(
                    '$symptom: $symptomCount',
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
