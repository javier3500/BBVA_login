//import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter/material.dart';
import 'main.dart';

//base de datos
import 'package:isar/isar.dart';
import 'package:login_session/DB/isar.dart';

//entidades
import 'package:login_session/DB/entities/cliente.dart';
import 'package:login_session/DB/entities/usuario.dart';

class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  static final TextEditingController _usernameController = TextEditingController();
  static final TextEditingController _passwordController = TextEditingController();

  static final TextEditingController _emailController = TextEditingController();
  static final TextEditingController _addressController = TextEditingController();
  static final TextEditingController _CURPController= TextEditingController();
  static final TextEditingController _NameController = TextEditingController();
  static final TextEditingController _CelController = TextEditingController();

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
        child: SingleChildScrollView(
          child:  Column(
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
             SizedBox(height: 16),
            TextField(
              controller: _CURPController,
              decoration: InputDecoration(
                labelText: 'CURP',
                prefixIcon: Icon(Icons.text_format_sharp),
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
              controller: _NameController,
              decoration: InputDecoration(
                labelText: 'Nombre completo',
                prefixIcon: Icon(Icons.text_format),
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
              controller: _CelController,
              decoration: InputDecoration(
                labelText: 'Telefóno',
                prefixIcon: Icon(Icons.phone),
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
              onPressed: _RegistrationUser, 
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
      ),
    );
  }


  
  Future<void> _RegistrationUser() async {

    //     // Validar que el nombre de usuario no contenga caracteres especiales ni espacios vacíos
    // if (_.text.contains(RegExp(r'[^\w]')) ||
    //     _usernameController.text.contains(' ')) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     SnackBar(
    //       content: Text('Nombre de usuario no válido'),
    //       backgroundColor: Colors.red,
    //     ),
    //   );
    //   return;
    // }


     final isar = IsarHelper.instance.isar;
     //generador de número de cuenta
     String id_banco = "234754";
     int numero = Random().nextInt(1000000) + 100000;
     String verificador = "43251";
     String numerocuenta = id_banco + numero.toString() + verificador;
     
     final client = cliente()..nombre_completo = _NameController.text..telefono = _CelController.text..domicilio = _addressController.text..CURP = _CURPController.text..noCuenta = numerocuenta..correo = _emailController.text;
     final user = usuario()..nombre_usuario = _usernameController.text..contrasena = _passwordController.text..correo =  _emailController.text;

     try{
         await isar.writeTxn(() async{
            await isar.clientes.put(client);
         });

          await isar.writeTxn(() async{
            await isar.usuarios.put(user);
         });
         print('usuario creado');
     }on IsarError catch(error){
      throw Exception(error.message);
     }
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
    );
  }
}




