import 'package:flutter/material.dart';
import 'TramitesTransferencia.dart';

class Indextranferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              'Javier',
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
                  SizedBox(height: 12),
                  TransferenciaItem(
                    fecha: '10/11/2023',
                    monto: '\$500.00',
                    concepto: 'Compra en línea',
                  ),
                  TransferenciaItem(
                    fecha: '09/11/2023',
                    monto: '\$200.00',
                    concepto: 'Almuerzo',
                  ),
                  TransferenciaItem(
                    fecha: '08/11/2023',
                    monto: '\$1000.00',
                    concepto: 'Pago de factura',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TransferenciaItem extends StatelessWidget {
  final String fecha;
  final String monto;
  final String concepto;

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
