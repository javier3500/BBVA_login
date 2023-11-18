import 'package:flutter/material.dart';
import '../Datos/Usuarios.dart';

class RealizarTransferenciaScreen extends StatelessWidget {
  final Usuario usuario;

  RealizarTransferenciaScreen({required this.usuario});

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
              'Transferir a: ${usuario.nombre}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Cantidad a transferir',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Concepto',
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Lógica para realizar la transferencia
              },
              child: Text('Realizar Transferencia'),
            ),
          ],
        ),
      ),
    );
  }
}
