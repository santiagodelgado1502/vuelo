import 'package:flutter/material.dart';
import 'package:vuelo/model/vuelo.dart';
import 'package:vuelo/model/backend.dart';
import 'package:vuelo/widget/VueloWidget.dart';
import 'package:vuelo/screens/DetailScreen.dart';

class ListScreen extends StatefulWidget {
  const ListScreen({super.key, required this.title});

  final String title;
  @override
  ListScreenEstado createState() => ListScreenEstado();
}

class ListScreenEstado extends State<ListScreen> {
  var vuelos = Backend().getVuelos();
  void markVueloAsRead(int id) {
    Backend().markVueloAsRead(id);
    setState(() {
      vuelos = Backend().getVuelos();
    });
  }

  void deleteVuelo(int id) {
    Backend().deleteVuelo(id);
    setState(() {
      vuelos = Backend().getVuelos();
    });
  }

  void showDetail(Vuelo vuelo) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return DetailScreen(vuelo: vuelo);
    }));
    Backend().markVueloAsRead(vuelo.id);
    setState(() {
      vuelos = Backend().getVuelos();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: vuelos.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(
          indent: 40.0,
          endIndent: 20.0,
        ),
        itemBuilder: (BuildContext context, int index) => Vuelo_Widget(
            vuelo: vuelos[index],
            onTap: showDetail,
            onLongPress: markVueloAsRead,
            onSwipe: deleteVuelo),
      ),
    );
  }
}
