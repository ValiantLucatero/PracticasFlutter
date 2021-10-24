import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:actividad2/list_page.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

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
              Container(
                padding: const EdgeInsets.only(
                  top: 30,
                  bottom: 20,
                ),
                child: Text(nombreProducto[numero],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)),
              ),
              Container(
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 5,
                ),
                child: Text(
                  precioProducto[numero],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                  width: 130,
                  height: 50,
                  padding: const EdgeInsets.all(5),
                  child:
                      const ListPage().calificacion(estrellasProducto[numero])),
              Expanded(
                  child: Center(
                child: Container(
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: Text(
                    descripcionProducto[numero],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              )),
            ],
          ),
        ));
  }
}
