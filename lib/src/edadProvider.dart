import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EdadProvider with ChangeNotifier {
  int _edad = 25; // Valor predeterminado

  EdadProvider() {
    _cargarEdadDesdeSharedPreferences();
  }

  int get edad => _edad;

  // Método para actualizar la edad
  Future<void> actualizarEdad(int nuevaEdad) async {
    _edad = nuevaEdad;
    await _guardarEdadEnSharedPreferences(nuevaEdad);
    notifyListeners();
  }

  // Cargar la edad desde las preferencias compartidas
  Future<void> _cargarEdadDesdeSharedPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    final edadGuardada = prefs.getInt('edad');
    if (edadGuardada != null) {
      _edad = edadGuardada;
    }
  }

  // Guardar la edad en las preferencias compartidas
  Future<void> _guardarEdadEnSharedPreferences(int nuevaEdad) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('edad', nuevaEdad);
  }
}
