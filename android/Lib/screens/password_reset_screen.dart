import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  final TextEditingController _emailPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restablecer Contraseña'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextField(
              controller: _emailPhoneController,
              decoration: InputDecoration(
                labelText: 'Correo electrónico o Teléfono',
                prefixIcon: Icon(Icons.email),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Aquí iría la lógica para enviar el código de restablecimiento
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}

