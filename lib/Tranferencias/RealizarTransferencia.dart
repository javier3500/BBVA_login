import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';


//base de datos
import 'package:isar/isar.dart';
import 'package:login_session/DB/isar.dart';

//entidades
import 'package:login_session/DB/entities/cliente.dart';
import 'package:login_session/DB/entities/transacciones.dart';
import 'package:login_session/DB/entities/usuario.dart';

import 'indextranferencias.dart';

class RealizarTransferenciaScreen extends StatelessWidget {
  final String nombreCliente;
  final String? correo;
  final int? saldo;

  final String? correoClient;
  final int? saldoClient;
  final String? CURP;
  final String? noCuenta;
  final String? telefono;
  final String? domicilio;

  RealizarTransferenciaScreen(
      {
        required this.nombreCliente, 
        required this.correo,
        required this.saldo,

        required this.correoClient,
        required this.saldoClient,
        required this.CURP,
        required this.noCuenta,
        required this.telefono,
        required this.domicilio,

      }    
  );

   final TextEditingController _cantidadController = TextEditingController();
  final TextEditingController _conceptoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Realizar Transferencia'),
        centerTitle: true,
        backgroundColor: Color(0xFF003366),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Transferir a: $nombreCliente', // Mostrar el nombre recibido
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              'Tú saldo actual: $saldo', // Mostrar el saldo recibido
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: _cantidadController,
              decoration: InputDecoration(
                labelText: 'Cantidad a transferir',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8),
            TextFormField(
              controller: _conceptoController,
              decoration: InputDecoration(
                labelText: 'Concepto',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () async {
                // Captura la cantidad y el concepto desde los TextFormField
                String cantidad = _cantidadController.text; // Obten la cantidad desde el TextFormField correspondiente
                String concepto = _conceptoController.text; // Obten el concepto desde el TextFormField correspondiente
                
                // Llama al método realizarTransferencia con los parámetros necesarios
                bool transferenciaExitosa =
                    await realizarTransferencia(cantidad, concepto, this.saldo, this.correo);

                if (transferenciaExitosa) {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                        content: Text('Transferencia realizada'),
                        backgroundColor: const Color.fromARGB(255, 244, 212, 54),
                     ),
                  );  
                   List<usuario> autenticado = await usuarioDatos(this.correo);
                   List<cliente> autenticadoclient = await clienteDatos(this.correo);
                  Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Indextranferencias(
            //pasamos los parametros a indextransferencias
            autenticado[0].nombre_usuario,
            autenticado[0].correo,
            autenticadoclient[0].saldo,
            autenticadoclient[0].noCuenta
            
          ),
        ),
      );
                  // ignore: use_build_context_synchronously
                          
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                     SnackBar(
                        content:Text('Transferencia no realizada.'),
                        backgroundColor: Color.fromARGB(255, 244, 73, 54),
                     ),
                  );      
                }
              },
              child: Text('Realizar Transferencia'),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF003366),
              ),
            ),
          ],
        ),
      ),
    );
  }

  final isar = IsarHelper.instance.isar; //conexión a base de
  Future<bool> realizarTransferencia(String cantidad, String concepto, int? saldo, String? correo) async {
    try {
      //calculamos el saldo actual
      int? cantidad1 = int.parse(cantidad);
      int? saldo1 = saldo;
      int? diferencia = saldo1! - cantidad1;
      int? NewsaldoCliente = cantidad1 + saldoClient!;

       if(diferencia >= 0){
         //verifica si el cliente existe
          final getcliente = await isar.clientes
          .filter()
          .correoEqualTo(correo, caseSensitive: false)
          .findFirst();

          final getclienteTransferencia = await isar.clientes
            .filter()
            .correoEqualTo(this.correoClient, caseSensitive: false)
            .findFirst();
            

          if(getcliente != null && getclienteTransferencia != null){
            
            //inseta una transacción
           final transac = transaccion()..fecha = '02/12/2023'..concepto = concepto..monto = cantidad..correo = correo;
           await isar.writeTxn(() async{
              await isar.transaccions.put(transac); 
           });

            //Registramos el saldo
             getcliente.saldo = diferencia;
              await isar.writeTxn(() async{
                   await isar.clientes.put(getcliente);
               });

             //Registramos el saldo
             getclienteTransferencia.saldo = NewsaldoCliente;
              await isar.writeTxn(() async{
              await isar.clientes.put(getclienteTransferencia);
              });
          }
       }else{
         throw Exception('Saldo insuficiente');
       }
       return true;
    } catch (e) {
      // Manejar cualquier error que ocurra durante la transferencia
      print('Error al realizar la transferencia: $e');
      return false;
    }
  }

  Future<List<cliente>> clienteDatos(String? correo) async {
  final client = await isar.clientes
        .filter()
        .correoEqualTo(correo, caseSensitive: false)
        .findAll();
    return client; // Usuario autenticado
  }

  Future<List<usuario>> usuarioDatos(String? correo) async {
  final user = await isar.usuarios
        .filter()
        .correoEqualTo(correo, caseSensitive: false)
        .findAll();
    return user; // Usuario autenticado
  }
}
