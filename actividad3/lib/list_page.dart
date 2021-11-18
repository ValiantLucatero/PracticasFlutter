import 'package:flutter/material.dart';
import 'package:actividad3/detail_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Productos")),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          //print(index);
          return myCard(context, index);
        },
      ),
    );
  }

  Widget myCard(BuildContext context, int indice) {
    return Card(
      child: myContent(context, indice),
    );
  }

  Widget myContent(BuildContext context, int indice) {
    return ListTile(
      title: Text(nombreProducto[indice]),
      subtitle: Column(
        children: [
          calificacion(estrellasProducto[indice]),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                precioProducto[indice],
                textScaleFactor: 1.5,
              )),
        ],
      ),
      leading: myImage(indice),
      trailing: ElevatedButton.icon(
          onPressed: () {
            //print("click click $indice");
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    numero: indice, //pasamos el indice del producto
                  ),
                ));
          },
          icon: const Icon(Icons.view_headline),
          label: const Text("Más")),
    );
  }

  Widget myImage(int indice) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 2,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          imagenProducto[indice],
          fit: BoxFit.cover,
          width: 100,
          height: 100,
        ),
      ),
    );
  }

  Widget calificacion(int estrellas) {
    if (estrellas == 1) {
      return Row(
        children: const [
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border)
        ],
      );
    }
    if (estrellas == 2) {
      return Row(
        children: const [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border),
          Icon(Icons.star_border)
        ],
      );
    }
    if (estrellas == 3) {
      return Row(
        children: const [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border),
          Icon(Icons.star_border)
        ],
      );
    }
    if (estrellas == 4) {
      return Row(
        children: const [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star_border)
        ],
      );
    }
    if (estrellas == 5) {
      return Row(
        children: const [
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star),
          Icon(Icons.star)
        ],
      );
    }
    return Row(children: const [Text("Sin calificaciones")]);
  }
}

//Base de datos de productos
const nombreProducto = [
  "Gyudon Tradicional",
  "Tonkotsu Ramen",
  "Tonkotsu Ramen Picante",
  "Tonkotsu Cha Shu Ramen",
  "Sakana Fry Don Salsa Teriyaki",
  "Sakana Fry Don Salsa Sriracha",
  "Sakana Fry Don Ponzu Gelée",
  "Teriyaki de Pollo",
  "Teriyaki de Pollo con Salsa Picante y Queso Crema",
  "Pollo Teriyaki con Queso Crema",
  "Teriyaki de Pollo con Salsa Sriracha y Queso Crema",
  "Teriyaki de Pollo con Champiñones y Salsa de Ajo",
  "Teriyaki de Cerdo",
  "Teriyaki de Cerdo con Champiñones",
  "Curry Sakana Fry"
];
const descripcionProducto = [
  "Gyudon con carne de res en finas rebanadas y cocida a fuego lento, cebollas, sobre arroz cocido al vapor al estilo japonés.",
  "El clásico ramen tonkotsu elaborado con nuestra receta original de caldo de cerdo ultra rico y nuestros ﬁdeos caseros.",
  "Para los amantes de las especias, nuestro delicioso ramen tonkotsu está cubierto con nuestra salsa ninja original para brindar un sabor único.",
  "Rico y sabroso ramen tonkotsu cubierto con 9 piezas de nuestro chashu cocido a fuego lento.",
  "Bowl de pescado empanizado en cama de arroz japonés con algas nori, acompañada con ensalada cesar y tilapia frita con tamaño a elección.",
  "Bowl de pescado empanizado en cama de arroz japones con algas nori, acompañada con ensalada cesar y crujiente tilapia frita, cubierto con mayonesa sriracha y verduras al vapor.",
  "Bowl de pescado empanizado en cama de arroz japones con algas nori, acompañada con ensalada cesar y crujiente tilapia frita, cubierto con salsa gelée a base de limón, soya y queso chihuahua.",
  "Teriyaki de pollo, con tare y al fuego directo y un toque de salsa teriyaki.",
  "Pollo teriyaki cubierto de queso crema y salsa ninja, picante con tamaño a elección.",
  "Pollo con cremoso queso philadelphia, crocantes de tempura y salsa de la casa teriyaki.",
  "Teriyaki de pollo cubierto con queso philadelphia y mayonesa de sriracha moderadamente picante.",
  "Pollo Teriyaki con champiñones y salsa de ajo",
  "Teriyaki originario de hokkaido con lomo de cerdo aderezado en salsa dulce y salada sobre arroz calientito.",
  "Teriyaki de cerdo espolvoreado con champiñones y salsa con infusión de ajo.",
  "Curry rico en especias, acompañado de arroz estilo japonés y filete de tilapia"
];
const imagenProducto = [
  "assets/images/gyudonTradicional.webp",
  "assets/images/tonkotsuRamen.webp",
  "assets/images/tonkotsuRamenPicante.webp",
  "assets/images/tonkotsuChaShuRamen.webp",
  "assets/images/sakanaFryDonSalsaTeriyaki.webp",
  "assets/images/sakanaFryDonSalsaSriracha.webp",
  "assets/images/sakanaFryDonPonzuGelee.webp",
  "assets/images/teriyakiDePollo.webp",
  "assets/images/teriyakiPolloSalsaPicanteQuesoCr.webp",
  "assets/images/polloTeriyakiQuesoCrema.webp",
  "assets/images/teriyakiPolloSrirachaQuesoCrema.webp",
  "assets/images/teriyakiPolloChampAjo.webp",
  "assets/images/teriyakiCerdo.webp",
  "assets/images/teriyakiCerdoChamp.webp",
  "assets/images/currySakanaFry.webp"
];
const precioProducto = [
  "\$69.00",
  "\$89.00",
  "\$89.00",
  "\$105.00",
  "\$84.00",
  "\$89.00",
  "\$89.00",
  "\$83.00",
  "\$99.00",
  "\$99.00",
  "\$99.00",
  "\$103.00",
  "\$83.00",
  "\$103.00",
  "\$109.00"
];
const estrellasProducto = [3, 4, 5, 4, 5, 4, 3, 5, 3, 3, 4, 5, 5, 5, 5];
