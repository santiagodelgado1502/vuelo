class Vuelo {
  final int id;
  final String descripcion;
  final String ruta;
  final String precio;
  final String escalas;
  bool leido;

  Vuelo({
    required this.id,
    required this.descripcion,
    required this.ruta,
    required this.precio,
    required this.escalas,
    this.leido = false,
  });
}
