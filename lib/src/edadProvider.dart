import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class EdadProvider with ChangeNotifier {
  int _edad = 25; // Valor predeterminado
  Map<String, List<String>> _symptomsSelections = {};
  Map<String, int> _symptomsFrequency = {};

  EdadProvider() {
    _cargarEdadDesdeSharedPreferences();
    _cargarSymptomsSelectionsDesdeSharedPreferences();
  }

  int get edad => _edad;
  Map<String, List<String>> get symptomsSelections => _symptomsSelections;

  Future<void> actualizarEdad(int nuevaEdad) async {
    _edad = nuevaEdad;
    await _guardarEdadEnSharedPreferences(nuevaEdad);
    notifyListeners();
  }

  Future<void> actualizarSymptomsSelections(
      Map<String, List<String>> nuevaSeleccion) async {
    _symptomsSelections = nuevaSeleccion;
    _symptomsFrequency = _calculateSymptomsFrequency(_symptomsSelections);
    await _guardarSymptomsSelectionsEnSharedPreferences(nuevaSeleccion);
    notifyListeners();
  }

  Future<void> _cargarEdadDesdeSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final edadGuardada = prefs.getInt('edad');
    if (edadGuardada != null) {
      _edad = edadGuardada;
    }
  }

  Future<void> _guardarEdadEnSharedPreferences(int nuevaEdad) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('edad', nuevaEdad);
  }

  Future<void> _cargarSymptomsSelectionsDesdeSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final savedSymptomsSelections = prefs.getString('symptomsSelections');
    if (savedSymptomsSelections != null) {
      final dynamic decodedSelections = json.decode(savedSymptomsSelections);

      if (decodedSelections is Map<String, dynamic>) {
        decodedSelections.forEach((key, value) {
          if (value is List<dynamic>) {
            _symptomsSelections[key] = value.cast<String>();
          }
        });
      }
    }
  }

  Future<void> _guardarSymptomsSelectionsEnSharedPreferences(
      Map<String, List<String>> nuevaSeleccion) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('symptomsSelections', json.encode(nuevaSeleccion));
  }

  static Map<String, int> calculateSymptomsFrequency(
      Map<String, List<String>> symptomsSelections) {
    Map<String, int> frequencyMap = {};

    symptomsSelections.forEach((key, value) {
      value.forEach((symptom) {
        frequencyMap[symptom] = (frequencyMap[symptom] ?? 0) + 1;
      });
    });

    return frequencyMap;
  }

  Map<String, int> get symptomsFrequency => _symptomsFrequency;

  static Future<void> saveSymptomsFrequency(
      Map<String, int> symptomsFrequency) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('symptomsFrequency', json.encode(symptomsFrequency));
  }
}

Map<String, int> _calculateSymptomsFrequency(
    Map<String, List<String>> symptomsSelections) {
  Map<String, int> frequencyMap = {};

  symptomsSelections.forEach((key, value) {
    value.forEach((symptom) {
      frequencyMap[symptom] = (frequencyMap[symptom] ?? 0) + 1;
    });
  });

  return frequencyMap;
}

Future<Map<String, int>> cargarSymptomsFrequency() async {
  final prefs = await SharedPreferences.getInstance();
  final savedSymptomsFrequency = prefs.getString('symptomsFrequency');

  if (savedSymptomsFrequency != null) {
    return Map<String, int>.from(json.decode(savedSymptomsFrequency));
  }

  return {}; // Si no hay datos guardados, devuelve un mapa vacío
}
