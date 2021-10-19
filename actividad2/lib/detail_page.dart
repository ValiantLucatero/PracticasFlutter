import 'package:flutter/material.dart';
import 'package:actividad2/list_page.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.numero}) : super(key: key);

  final int numero; //recibimos el indice del producto
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Detalles")),
        body: Center(
          child: Column(
            children: [
              Image.asset(imagenProducto[numero]),
              Text(nombreProducto[numero],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              Text(descripcionProducto[numero]),
            ],
          ),
        ));
  }
}
