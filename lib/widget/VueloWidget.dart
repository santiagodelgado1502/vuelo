import 'package:flutter/material.dart';
import 'package:vuelo/model/vuelo.dart';

class Vuelo_Widget extends StatelessWidget {
  final Vuelo vuelo;
  final Function onTap;
  final Function onSwipe;
  final Function onLongPress;
  const Vuelo_Widget(
      {Key? key,
      required this.vuelo,
      required this.onTap,
      required this.onLongPress,
      required this.onSwipe})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragEnd: (DragEndDetails details) {
        onSwipe(vuelo.id);
      },
      onLongPress: () {
        onLongPress(vuelo.id);
      },
      onTap: () {
        onTap(vuelo);
      },
      child: Container(
        padding: const EdgeInsets.all(10.0),
        height: 80.0,
        child: Row(children: [
          Expanded(
            flex: 1,
            child: Container(
              height: 12.0,
              decoration: BoxDecoration(
                  color: vuelo.leido ? Colors.transparent : Colors.blue,
                  shape: BoxShape.circle),
            ),
          ),
          Expanded(
            flex: 9,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(vuelo.ruta,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700,
                    )),
                Text(vuelo.precio,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                    )),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
