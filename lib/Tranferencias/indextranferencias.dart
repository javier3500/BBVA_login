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
  Key? key;
  List<transaccion> trans = [];

  Indextranferencias(this.user_name, this.correo) {
    //trans = listaTrans(this.correo) as List<transaccion>;
  }

  @override
  Widget build(BuildContext context) {
    
    print(this.user_name);//verificamos que si esta pasando los datos
    print(this.correo);//verificamos que si esta pasando los datos
    print(trans.isNotEmpty);
    //<print(trans[0].concepto);
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        centerTitle: true,
        backgroundColor: Color(0xFF003366), // Azul oscuro
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Monto imaginario
            Text(
              '\$10,000.00',
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
                    builder: (context) => BuscarUsuarioScreen(),
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
            // Historial de transferencias imaginario
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
                  ListView.builder(
                    primary: false,
                    
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      //final transfe = trans[index];
                      return ListTile(
                        title: Text('Hola'),
                      );
                  
                     }),
                  

                  // Expanded(
                  //   child: ListView.separated(
                  //     itemCount: trans.length,
                  //     itemBuilder: (context, index){
                  //       final transaccion = trans[index];
                  //       return TransferenciaItem (
                  //         fecha: transaccion.fecha,
                  //         monto: '${transaccion.monto}',
                  //         concepto: transaccion.concepto,
                  //       );
                  //     },
                  //     separatorBuilder: (context, index) => const Divider(),
                  //   ),
                  // ),
                  // SizedBox(height: 12),
                  // TransferenciaItem(
                  //   fecha: '10/11/2023',
                  //   monto: '\$500.00',
                  //   concepto: 'Compra en línea',
                  // ),
                  // TransferenciaItem(
                  //   fecha: '09/11/2023',
                  //   monto: '\$200.00',
                  //   concepto: 'Almuerzo',
                  // ),
                  // TransferenciaItem(
                  //   fecha: '08/11/2023',
                  //   monto: '\$1000.00',
                  //   concepto: 'Pago de factura',
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<List<transaccion>> listaTrans (String? correo){
  final trans = getAllTransaccion(correo);
  return trans;
}


final isar = IsarHelper.instance.isar;//conexión a base de
 Future<List<transaccion>> getAllTransaccion(String? correo) async{
  print('hola ${correo}');
  final listTransaccion = await isar.transaccions
        .filter()
        .correoEqualTo(correo, caseSensitive: false)
        .findAll();

    return listTransaccion;
  }

  void mostrar(){
    print('Hola');
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
