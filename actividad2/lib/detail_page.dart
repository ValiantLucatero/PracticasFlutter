import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:actividad2/list_page.dart';
import 'package:flutter/painting.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.numero}) : super(key: key);

  final int numero; //recibimos el indice del producto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detalles")),
        body: Center(
          child: Flex(
            direction: Axis.vertical,
            children: [
              Image.asset(imagenProducto[numero]),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(nombreProducto[numero],
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 30, fontWeight: FontWeight.bold)),
                ),
              ),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.only(
                  left: 10,
                  right: 10,
                ),
                child: Text(
                  descripcionProducto[numero],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
