// main.dart

import 'package:flutter/material.dart';
import 'dart:convert'; // Importar la librería necesaria para Base64
import 'Tranferencias/indextranferencias.dart';
import 'Registros.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF003366), // Azul oscuro
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/BBVA_2019.png',
                      width: 150,
                      height: 150,
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _usernameController,
                      decoration: InputDecoration(
                        labelText: 'Usuario',
                        prefixIcon: Icon(Icons.person),
                        filled: true,
                        fillColor: Colors.grey[200], // Gris claro
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Contraseña',
                        prefixIcon: Icon(Icons.lock),
                        filled: true,
                        fillColor: Colors.grey[200], // Gris claro
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 32),
                    ElevatedButton(
                      onPressed: _handleLogin, // Utilizar el nuevo método
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF0099FF), // Azul claro
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(
                        'Iniciar Sesión',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 16),
                    TextButton(
                      onPressed: () {
                        // Navegar a la página de registro
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => RegistrationPage(),
                          ),
                        );
                      },
                      child: Text(
                        '¿No tienes una cuenta? Regístrate',
                        style: TextStyle(color: Color(0xFF0099FF)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Método para manejar la lógica de inicio de sesión
  void _handleLogin() {
    // Validar que el nombre de usuario no contenga caracteres especiales ni espacios vacíos
    if (_usernameController.text.contains(RegExp(r'[^\w]')) ||
        _usernameController.text.contains(' ')) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Nombre de usuario no válido'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Validar que la contraseña no contenga caracteres especiales
    if (_passwordController.text.contains(RegExp(r'[^\w]'))) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content:
              Text('La contraseña no puede contener caracteres especiales'),
          backgroundColor: Colors.red,
        ),
      );
      return;
    }

    // Encriptar la contraseña usando Base64
    String encryptedPassword =
        base64.encode(utf8.encode(_passwordController.text));
    print(encryptedPassword);
    print(_usernameController.text);
    // Lógica para iniciar sesión
    if (_usernameController.text == 'javier' &&
        encryptedPassword == 'MTIzNDU2') {
      // Si las credenciales son correctas, redirige a la vista Indextranferencias
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Indextranferencias(),
        ),
      );
    } else {
      // Muestra un mensaje de error si las credenciales son incorrectas
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Usuario o contraseña incorrectos'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}

// ... (tu código existente)

