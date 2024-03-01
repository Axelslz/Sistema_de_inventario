import 'package:flutter/material.dart';
import 'inventory_detail_screen.dart';
import 'stock_screen.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(choices.length, (index) {
          return Center(
            child: ChoiceCard(
              choice: choices[index],
              onTap: () {
                if (choices[index].title == 'Inventario') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => InventoryDetailScreen()));
                } else if (choices[index].title == 'Stock') {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => StockScreen()));
                }
                // No hay una opción de 'Ventas', así que no se incluye.
              },
            ),
          );
        }),
      ),
    );
  }
}

const List<Choice> choices = [
  Choice(title: 'Inventario', icon: Icons.inventory),
  Choice(title: 'Stock', icon: Icons.store),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key? key, required this.choice, required this.onTap}) : super(key: key);
  final Choice choice;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Expanded(child: Icon(choice.icon, size: 50.0, color: Colors.grey)),
              Text(choice.title, style: TextStyle(color: Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}

// Asegúrate de definir la clase Choice si aún no está definida
class Choice {
  const Choice({required this.title, required this.icon});
  final String title;
  final IconData icon;
}

