import 'package:flutter/material.dart';
import 'package:login_session/main.dart';
import 'TramitesTransferencia.dart';

//entidades
import 'package:login_session/DB/entities/cliente.dart';
import 'package:login_session/DB/entities/usuario.dart';
import 'package:login_session/DB/entities/transacciones.dart';
// import 'package:login_session/DB/entities/entities.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:login_session/blocs/blocs.dart';

//base de datos
import 'package:isar/isar.dart';
import 'package:login_session/DB/isar.dart';


class Indextranferencias extends StatelessWidget {
 
  
  String? user_name;
  String? correo;
  int? saldo;
  String? noCuenta;
  Key? key;
  List<transaccion> trans = [];
  bool bandera = false;
  Indextranferencias(this.user_name, this.correo, this.saldo, this.noCuenta);

  @override
  Widget build(BuildContext context) {
    
    //<print(trans[0].concepto);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        centerTitle: true,
        backgroundColor: Color(0xFF003366), // Azul oscuro
      ),
      body: Center(
        child:  SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Monto imaginario
            Text(
               'No. cuenta: ${this.noCuenta?? "No disponible"}',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003366), // Azul oscuro
              ),
            ),
            Text(
               'saldo: ${this.saldo?? "No disponible"}',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003366), // Azul oscuro
              ),
            ),
            SizedBox(height: 16),
            // Logo de transferencia bancaria
            GestureDetector(
              onTap: () {
                // Navegar a otra vista cuando se presiona el logo
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BuscarUsuarioScreen(this.correo, this.saldo),
                  ),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF003366), // Azul oscuro similar al BBVA
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(20),
                child: Image.asset(
                  'assets/Tranferencia.png', // imagen cargada
                  width: 60,
                  height: 60,
                ),
              ),
            ),
            SizedBox(height: 16),
            // Nombre de usuario
            Text(
              '${this.user_name}',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003366), // color azul
              ),
            ),
            SizedBox(height: 24),
            // Historial de transferencias
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                border:
                    Border.all(color: Color(0xFF003366)), // Borde azul oscuro
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Historial de Transferencias',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF003366), // Azul oscuro
                    ),
                  ),

                  FutureBuilder<List<transaccion>>(
                      future: _getAllTransaccion(this.correo),
                      builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                         return CircularProgressIndicator();
                      } else if (snapshot.hasError) {
                         return Text('Error: ${snapshot.error}');
                      } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                         return Text('No se encontraron datos.');
                      } else {
                         trans = snapshot.data!;
                          bandera = true;
                       return _buildTransaccionInfo(trans);
                     }
                    },
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




  Widget _buildTransaccionInfo(List<transaccion> transacciones) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Color(0xFFE0E0E0),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (var transaccion in transacciones)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      SizedBox(height: 8),
                      SizedBox(height: 8),
                       SizedBox(height: 8),
                    Text(
                      'Fecha: ${transaccion.fecha ?? "No disponible"}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Concepto: ${transaccion.concepto ?? "No disponible"}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                      SizedBox(height: 8),
                      Text(
                      'monto: ${transaccion.monto ?? "No disponible"}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }
}


final isar = IsarHelper.instance.isar;//conexión a base de
 Future<List<transaccion>> _getAllTransaccion(String? correo) async{
  print('hola ${correo}');
  final listTransaccion = await isar.transaccions
        .filter()
        .correoEqualTo(correo, caseSensitive: false)
        .findAll();
    return listTransaccion;
  }

  Future<List<usuario>> verificarYAutenticar(String nombre, String pass) async {
    final usuarios = await isar.usuarios
        .filter()
        .nombre_usuarioEqualTo(nombre, caseSensitive: false)
        .and()
        .contrasenaEqualTo(pass)
        .findAll();
   
      return usuarios; // Usuario autenticado
  }

   Future<List<cliente>> clienteDatos(String? correo) async {
       final client = await isar.clientes
        .filter()
        .correoEqualTo(correo, caseSensitive: false)
        .findAll();
        return client; // Usuario autenticado
   } 

class TransferenciaItem extends StatelessWidget {
  String? fecha;
  String? monto;
  String? concepto;

  TransferenciaItem({
    required this.fecha,
    required this.monto,
    this.concepto = '',
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Fecha: $fecha',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Monto: $monto',
          style: TextStyle(fontSize: 16),
        ),
        Text(
          'Concepto: $concepto',
          style: TextStyle(fontSize: 16),
        ),
        SizedBox(height: 8),
      ],
    );
  }
}
