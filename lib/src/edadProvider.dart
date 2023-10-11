import 'package:flutter/foundation.dart';

class EdadProvider with ChangeNotifier {
  int _edad = 25; // Valor predeterminado
  String _nombre = 'Nombre del Usuario'; // Valor predeterminado

  int get edad => _edad;
  String get nombre => _nombre;

  // Método para actualizar la edad
  void actualizarEdad(int nuevaEdad) {
    _edad = nuevaEdad;
    notifyListeners();
  }

  // Método para actualizar el nombre
  void actualizarNombre(String nuevoNombre) {
    _nombre = nuevoNombre;
    notifyListeners();
  }
}
