import 'package:flutter/material.dart';
import 'RealizarTransferencia.dart';

// Base de datos
import 'package:isar/isar.dart';
import 'package:login_session/DB/isar.dart';

// Entidades
import 'package:login_session/DB/entities/cliente.dart';

class BuscarUsuarioScreen extends StatefulWidget {
  @override
  _BuscarUsuarioScreenState createState() => _BuscarUsuarioScreenState();
}

class _BuscarUsuarioScreenState extends State<BuscarUsuarioScreen> {
  final String nombreUsuario = "";
  final double saldoUsuario = 0;
  final isar = IsarHelper.instance.isar; // Conexión a la base de datos
  TextEditingController _numeroCuentaController = TextEditingController();
  bool bandera = false;

  List<cliente>? _usuarios;

  @override
  Widget build(BuildContext context) {
    print(bandera);
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar Usuario'),
        centerTitle: true,
        backgroundColor: Color(0xFF003366),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _NumeroCuenta(),
              SizedBox(height: 16),
              _buildUserInfo(_usuarios ?? []),
            ],
          ),
        ),
      ),
    );
  }

  Widget _NumeroCuenta() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: _numeroCuentaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Número de Cuenta',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(width: 16),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _usuarios = null;
                  bandera =
                      false; // Reinicia la bandera al realizar una nueva búsqueda
                });
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF003366),
              ),
              child: Text(
                'Buscar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        FutureBuilder<List<cliente>>(
          future: _verificacionCuenta(_numeroCuentaController.text),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return Text('No se encontraron datos.');
            } else {
              _usuarios = snapshot.data!;
              bandera = true;
              return _buildUserInfo(_usuarios!);
            }
          },
        ),
      ],
    );
  }

  Widget _buildUserInfo(List<cliente> usuarios) {
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
              for (var cliente in usuarios)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ID: ${cliente.id}',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF003366),
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Nombre Completo: ${cliente.nombre_completo ?? "No disponible"}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Teléfono: ${cliente.telefono ?? "No disponible"}',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 16),
                    if (bandera)
                      _buildRealizarTransferenciaButton(
                          cliente.nombre_completo ?? "Nombre no disponible",
                          cliente.saldo ?? 0),
                  ],
                ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRealizarTransferenciaButton(String nombre_completo, int saldo) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RealizarTransferenciaScreen(
                nombreCliente: nombre_completo, saldo: saldo),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        primary: Color(0xFF003366),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_forward),
          SizedBox(width: 8),
          Text(
            'Realizar Transferencia',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Future<List<cliente>> _verificacionCuenta(String numeroCuenta) async {
    final datos =
        await isar.clientes.filter().telefonoEqualTo(numeroCuenta).findAll();
    return datos;
  }
}
