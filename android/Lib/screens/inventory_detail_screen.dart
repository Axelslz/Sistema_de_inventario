import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inventario',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const InventoryScreen(),
    );
  }
}

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('INVENTARIO'),
        leading: IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            // Acción para volver al inicio
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              // Acción para añadir nuevo item
            },
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.8,
        ),
        itemCount: 20, // Cantidad de elementos en el inventario
        itemBuilder: (BuildContext context, int index) {
          return InventoryCard(
            // Suponiendo que esta función obtiene los datos del inventario
            name: 'Cerveza Nombre',
            quantity: '0000',
            price: '0.00',
            image: 'assets/beer_image.png', // Reemplaza con tu imagen del inventario
          );
        },
      ),
    );
  }
}

class InventoryCard extends StatelessWidget {
  final String name;
  final String quantity;
  final String price;
  final String image;

  const InventoryCard({
    Key? key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: CircleAvatar(
              backgroundColor: Colors.redAccent,
              radius: 48, // Tamaño del círculo
              child: CircleAvatar(
                radius: 45, // Tamaño del círculo imagen
                backgroundImage: AssetImage(image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Text('Cantidad: $quantity'),
          Text('Precio/unidad: \$$price'),
        ],
      ),
    );
  }
}

