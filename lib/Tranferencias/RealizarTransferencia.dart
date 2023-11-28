import 'package:flutter/material.dart';

class RealizarTransferenciaScreen extends StatelessWidget {
  final String nombreCliente;
  final int saldo;

  RealizarTransferenciaScreen(
      {required this.nombreCliente, required this.saldo});

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
              'Saldo actual: $saldo', // Mostrar el saldo recibido
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
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
              onPressed: () async {
                // Captura la cantidad y el concepto desde los TextFormField
                String cantidad =
                    '...'; // Obten la cantidad desde el TextFormField correspondiente
                String concepto =
                    '...'; // Obten el concepto desde el TextFormField correspondiente

                // Llama al método realizarTransferencia con los parámetros necesarios
                bool transferenciaExitosa =
                    await realizarTransferencia(cantidad, concepto);

                if (transferenciaExitosa) {
                  // Realizar alguna acción después de una transferencia exitosa
                } else {
                  // Realizar alguna acción en caso de fallo en la transferencia
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

  Future<bool> realizarTransferencia(String cantidad, String concepto) async {
    try {
      return true;
    } catch (e) {
      // Manejar cualquier error que ocurra durante la transferencia
      print('Error al realizar la transferencia: $e');
      return false;
    }
  }
}
