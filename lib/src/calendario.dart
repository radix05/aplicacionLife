import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';
import 'graficas.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:provider/provider.dart';
import 'edadProvider.dart';

class Calendario extends StatefulWidget {
  @override
  _CalendarioState createState() => _CalendarioState();
}

class _CalendarioState extends State<Calendario> {
  CalendarFormat _calendarFormat = CalendarFormat.week;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  late SharedPreferences _prefs;
  Map<String, List<String>> _symptomsSelections = {};

  @override
  void initState() {
    super.initState();
    _initializeSharedPreferences();
    initializeDateFormatting('es', null);
  }

  Future<void> _initializeSharedPreferences() async {
    _prefs = await SharedPreferences.getInstance();
    _loadSelectedDay();
    _loadCalendarFormat();
  }

  void _loadSelectedDay() {
    final selectedDayMillis = _prefs.getInt('selectedDay') ?? 0;
    if (selectedDayMillis != 0) {
      setState(() {
        _selectedDay = DateTime.fromMillisecondsSinceEpoch(selectedDayMillis);
        _loadSymptomsSelections(_selectedDay);
      });
    }
  }

  void _loadCalendarFormat() {
    final savedFormat = _prefs.getString('calendarFormat');
    if (savedFormat != null) {
      setState(() {
        _calendarFormat = CalendarFormat.values
            .firstWhere((format) => format.toString() == savedFormat);
      });
    }
  }

  void _loadSymptomsSelections(DateTime? selectedDay) {
    if (selectedDay != null) {
      final selectedDateKey = DateFormat('y-MM-dd').format(selectedDay);
      final selectedSymptoms = _prefs.getStringList(selectedDateKey);
      if (selectedSymptoms != null) {
        setState(() {
          _symptomsSelections[selectedDateKey] = selectedSymptoms;
        });
      }
    }
  }

  void _saveSymptomsSelections(
      DateTime? selectedDay, List<String> selectedSymptoms) {
    if (selectedDay != null) {
      final selectedDateKey = DateFormat('y-MM-dd').format(selectedDay);
      _prefs.setStringList(selectedDateKey, selectedSymptoms);
    }
  }

  void _saveSelectedDay(DateTime? selectedDay) {
    if (selectedDay != null) {
      _prefs.setInt('selectedDay', selectedDay.millisecondsSinceEpoch);
    } else {
      _prefs.remove('selectedDay');
    }
  }

  void _saveCalendarFormat(CalendarFormat format) {
    _prefs.setString('calendarFormat', format.toString());
  }

  void _handleSymptomSelection(String symptom, bool isSelected) {
    if (_selectedDay != null) {
      final selectedDateKey = DateFormat('y-MM-dd').format(_selectedDay!);
      final selectedSymptoms = _symptomsSelections[selectedDateKey] ?? [];

      if (isSelected) {
        selectedSymptoms.add(symptom);
      } else {
        selectedSymptoms.remove(symptom);
      }

      setState(() {
        _symptomsSelections[selectedDateKey] = selectedSymptoms;
      });

      _saveSymptomsSelections(_selectedDay, selectedSymptoms);

      // Accede a EdadProvider y actualiza los síntomas
      Provider.of<EdadProvider>(context, listen: false)
          .actualizarSymptomsSelections(_symptomsSelections);

      // También, actualiza la frecuencia de síntomas en EdadProvider
      final symptomsFrequency =
          EdadProvider.calculateSymptomsFrequency(_symptomsSelections);
      EdadProvider.saveSymptomsFrequency(symptomsFrequency);
    }
  }

  void _saveSymptomsFrequency(Map<String, int> symptomsFrequency) {
    _prefs.setString('symptomsFrequency', json.encode(symptomsFrequency));
  }

  Map<String, int> _calculateSymptomsFrequency() {
    Map<String, int> frequencyMap = {};

    _symptomsSelections.forEach((key, value) {
      value.forEach((symptom) {
        frequencyMap[symptom] = (frequencyMap[symptom] ?? 0) + 1;
      });
    });

    return frequencyMap;
  }

  Widget buildSymptomDiv(String symptom, String label) {
    return Column(
      children: [
        DivConTextoSmall(
          texto: label,
          onSelected: (bool isSelected) {
            _handleSymptomSelection(symptom, isSelected);
          },
          isSelected: _selectedDay != null &&
              _symptomsSelections
                  .containsKey(DateFormat('y-MM-dd').format(_selectedDay!)) &&
              _symptomsSelections[DateFormat('y-MM-dd').format(_selectedDay!)]
                      ?.contains(symptom) ==
                  true,
        ),
        SizedBox(height: 10),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 165, 231),
        title: const Text('Calendario mensual'),
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
        child: Center(
          child: Column(
            children: <Widget>[
              TableCalendar(
                firstDay: DateTime.utc(2023, 1, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                focusedDay: _focusedDay,
                calendarFormat: _calendarFormat,
                selectedDayPredicate: (day) {
                  return isSameDay(day, _selectedDay);
                },
                calendarStyle: const CalendarStyle(
                  selectedDecoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.pink,
                  ),
                ),
                headerStyle: const HeaderStyle(
                  formatButtonVisible: false,
                ),
                locale: 'es_ES',
                availableGestures: AvailableGestures.none,
                onFormatChanged: (format) {
                  if (format == CalendarFormat.month) {
                    setState(() {
                      _calendarFormat = format;
                    });
                    _saveCalendarFormat(format);
                  } else {
                    // Si no es el formato de mes, forzamos el formato de mes nuevamente.
                    setState(() {
                      _calendarFormat = CalendarFormat.month;
                    });
                  }
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                    _loadSymptomsSelections(selectedDay);
                    _saveSelectedDay(selectedDay);
                  });
                },
              ),
              if (_selectedDay != null)
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _selectedDay != null
                        ? 'Día seleccionado: ${DateFormat.yMMMMd('es').format(_selectedDay!)}'
                        : 'Día no seleccionado',
                    style: const TextStyle(fontSize: 16),
                  ),
                )
              else
                const SizedBox.shrink(),
              const SizedBox(height: 20),
              Column(
                children: [
                  buildSymptomDiv('Sofoco', 'Sofoco'),
                  buildSymptomDiv('Migraña', 'Migraña'),
                  buildSymptomDiv('Alergia', 'Alergia'),
                  buildSymptomDiv('Insomnio', 'Insomnio'),
                  buildSymptomDiv('Sequedad', 'Sequedad'),
                ],
              ),
              ElevatedButton(
                onPressed: () async {
                  Map<String, int> symptomsFrequency =
                      _calculateSymptomsFrequency();

                  print(
                      'Síntomas Frecuencia antes de navegar: $symptomsFrequency');

                  // Navega a la pantalla de gráficas y espera a que regrese
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) {
                        // Calcula la frecuencia de los síntomas antes de navegar a Graficas
                        final symptomsFrequency =
                            EdadProvider.calculateSymptomsFrequency(
                                _symptomsSelections);

                        // Guarda la frecuencia de los síntomas en SharedPreferences
                        EdadProvider.saveSymptomsFrequency(symptomsFrequency);

                        // Pasa la frecuencia de los síntomas a la pantalla de gráficas
                        return Graficas(symptomsFrequency: symptomsFrequency);
                      },
                    ),
                  );
                },
                child: const Text('Ir a Gráficas'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildListItem(String text) {
  return Container(
    padding: const EdgeInsets.all(16),
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey),
    ),
    child: Text(
      text,
      style: const TextStyle(fontSize: 18),
    ),
  );
}

class DivConTextoSmall extends StatefulWidget {
  final String texto;
  final Function(bool isSelected) onSelected;
  final bool isSelected;

  DivConTextoSmall({
    Key? key,
    required this.texto,
    required this.onSelected,
    this.isSelected = false,
  }) : super(key: key);

  @override
  _DivConTextoSmallState createState() => _DivConTextoSmallState();
}

class _DivConTextoSmallState extends State<DivConTextoSmall> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410,
      height: 60,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.texto,
              style: const TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 20.0,
              ),
            ),
          ),
          IconButton(
            icon: widget.isSelected
                ? Icon(Icons.check_box)
                : Icon(Icons.check_box_outline_blank),
            onPressed: () {
              widget.onSelected(!widget.isSelected);
            },
          ),
        ],
      ),
    );
  }
}
