import 'package:flutter/material.dart';
import 'package:vuelo/model/vuelo.dart';

class DetailScreen extends StatelessWidget {
  final Vuelo vuelo;
  const DetailScreen({Key? key, required this.vuelo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(vuelo.ruta),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ruta: ${vuelo.ruta} ',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 10.0),
            const Divider(color: Colors.grey),
            const SizedBox(height: 10.0),
            Text('Precio: ${vuelo.precio} Dolares',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 5.0),
            const Divider(color: Colors.grey),
            Text('Escala(s): ${vuelo.escalas}',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                )),
            const SizedBox(height: 10.0),
            const Divider(color: Colors.grey),
            const SizedBox(height: 10.0),
            Text('Descripcion de Vuelo: ${vuelo.descripcion}',
                style: TextStyle(
                  fontSize: 15.0,
                ))
          ],
        ),
      ),
    );
  }
}
