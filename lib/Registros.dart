import 'dart:convert';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro'),
        centerTitle: true,
        backgroundColor: Color(0xFF003366), // Azul oscuro similar al BBVA
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Correo Electrónico',
                prefixIcon: Icon(Icons.email),
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
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Dirección',
                prefixIcon: Icon(Icons.location_on),
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
            SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // cifrado en base 64
                String encodedPassword =
                    base64.encode(utf8.encode(_passwordController.text));

                // Print the registration data to the console
                print('Usuario: ${_usernameController.text}');
                print('Correo Electrónico: ${_emailController.text}');
                print('Dirección: ${_addressController.text}');
                print('Contraseña (Base64): $encodedPassword');
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF0099FF), // Azul claro
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Registrarse',
                style: TextStyle(fontSize: 16),
              ),
            ),
            SizedBox(height: 16),
            TextButton(
              onPressed: () {
                // Navigate back to the login page
                Navigator.pop(context);
              },
              child: Text(
                'Volver al inicio de sesión',
                style: TextStyle(color: Color(0xFF0099FF)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
