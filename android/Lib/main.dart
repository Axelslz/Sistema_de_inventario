import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/password_reset_screen.dart';
import 'screens/verification_code_screen.dart';
import 'screens/new_password_screen.dart';
import 'screens/main_screen.dart';
import 'screens/inventory_detail_screen.dart';
import 'screens/inventory_management_screen.dart';
import 'screens/stock_screen.dart'; // Asegúrate de importar la pantalla de stock

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sistema de Inventario',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginScreen(),
        '/password-reset': (context) => PasswordResetScreen(),
        '/verification-code': (context) => VerificationCodeScreen(),
        '/new-password': (context) => NewPasswordScreen(),
        '/main': (context) => MainScreen(),
        '/inventory-detail': (context) => InventoryDetailScreen(),
        '/inventory-management': (context) => InventoryManagementScreen(),
        '/stock': (context) => StockScreen(), // Aquí agregas la nueva ruta
      },
    );
  }
}

