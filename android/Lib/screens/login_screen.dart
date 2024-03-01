import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // Credenciales codificadas para el ejemplo
  final String _username = 'admin';
  final String _password = 'admin123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          color: Colors.grey[200], // Fondo gris claro de la pantalla
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 60),
              // Tu logo o imagen de avatar aquí
              CircleAvatar(
                backgroundColor: Colors.amber,
                radius: 48, // Tamaño del avatar
              ),
              SizedBox(height: 24),
              // Campos de texto
              _buildTextField(
                controller: _usernameController,
                labelText: 'Usuario',
                icon: Icons.person,
              ),
              SizedBox(height: 16),
              _buildTextField(
                controller: _passwordController,
                labelText: 'Contraseña',
                icon: Icons.lock,
                isPassword: true,
              ),
              SizedBox(height: 16),
              // Botón de olvidaste tu contraseña
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/password-reset');
                  },
                  child: Text(
                    '¿Olvidaste tu contraseña?',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Botón de Ingresar
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green, // Color de fondo del botón
                  shape: StadiumBorder(), // Borde redondeado del botón
                ),
                onPressed: () {
                  if (_usernameController.text == _username && _passwordController.text == _password) {
                    Navigator.pushReplacementNamed(context, '/main');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Usuario o contraseña incorrecta')),
                    );
                  }
                },
                child: Text('Ingresar'),
              ),
              // Botones adicionales para las vistas de verificación y nueva contraseña
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/verification-code');
                },
                child: Text('Ingresar Código de Verificación'),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/new-password');
                },
                child: Text('Crear Nueva Contraseña'),
              ),
              SizedBox(height: 60),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    required IconData icon,
    bool isPassword = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25.0),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}





