import 'package:flutter/material.dart';

class StockScreen extends StatelessWidget {
  final TextEditingController _productNameController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STOCK'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Acción para volver a la pantalla anterior
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 20), // Espacio al inicio
            Image.asset(
              'path_to_your_image.png', // Reemplazar con la ruta de tu imagen
              height: 150,
            ),
            SizedBox(height: 20), // Espacio después de la imagen
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _productNameController,
                    decoration: InputDecoration(
                      labelText: 'Nombre del producto',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 10), // Espacio entre campos
                  TextField(
                    controller: _priceController,
                    decoration: InputDecoration(
                      labelText: 'Precio',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 10), // Espacio entre campos
                  TextField(
                    controller: _quantityController,
                    decoration: InputDecoration(
                      labelText: 'Cantidad',
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height: 20), // Espacio antes del botón
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                    onPressed: () {
                      // Acción para guardar cambios
                    },
                    child: Text('Guardar cambios'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Espacio al final
          ],
        ),
      ),
    );
  }
}
