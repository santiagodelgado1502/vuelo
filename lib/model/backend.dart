import 'vuelo.dart';

class Backend {
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _vuelos = [
    Vuelo(
        id: 631,
        descripcion: 'Vuelo de 34 horas en clase business',
        ruta: 'Manta - Panama - Nueva York',
        precio: '1200',
        escalas: '1 Escala'),
    Vuelo(
        id: 123,
        descripcion: 'Vuelo de 30 minutos en clase economica',
        ruta: 'Manta - Quito',
        precio: '130',
        escalas: 'Sin escala'),
    Vuelo(
        id: 245,
        descripcion: 'Vuelo de 8 horas en clase business',
        ruta: 'Guayaquil - Nueva York',
        precio: '1145',
        escalas: 'Sin escala'),
    Vuelo(
        id: 365,
        descripcion: 'Vuelo de 16 horas en clase economica',
        ruta: 'Guayaquil - Lima - Rio De Janeiro',
        precio: '450',
        escalas: '1 Escala'),
    Vuelo(
        id: 346,
        descripcion: 'Vuelo de 3 horas en clase economica',
        ruta: 'Manta - Panama',
        precio: '438',
        escalas: 'Sin Escala'),
  ];

  List<Vuelo> getVuelos() {
    return _vuelos;
  }

  void markVueloAsRead(int id) {
    final index = _vuelos.indexWhere((vuelo) => vuelo.id == id);
    _vuelos[index].leido = true;
  }

  void deleteVuelo(int id) {
    _vuelos.removeWhere((vuelo) => vuelo.id == id);
  }
}
