import 'package:flutter/material.dart';
import '../Datos/Usuario_servicio.dart';
import '../Datos/Usuarios.dart';
import 'RealizarTransferencia.dart';

class BuscarUsuarioScreen extends StatefulWidget {
  @override
  _BuscarUsuarioScreenState createState() => _BuscarUsuarioScreenState();
}

class _BuscarUsuarioScreenState extends State<BuscarUsuarioScreen> {
  final UsuarioService usuarioService = UsuarioService();
  TextEditingController _numeroCuentaController = TextEditingController();
  Usuario? _usuario;

  @override
  Widget build(BuildContext context) {
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
              _buildNumeroCuentaInput(),
              SizedBox(height: 16),
              if (_usuario != null) ...[
                _buildUserInfo('Número de cuenta:', _usuario!.numeroCuenta),
                _buildUserInfo('Nombre:', _usuario!.nombre),
                _buildUserInfo(
                  'Saldo disponible:',
                  '\$${_usuario!.saldo.toStringAsFixed(2)}',
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            RealizarTransferenciaScreen(usuario: _usuario!),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF003366),
                  ),
                  child: Text(
                    'Realizar Transferencia',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNumeroCuentaInput() {
    return Row(
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
            _buscarUsuario();
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
    );
  }

  void _buscarUsuario() {
    String numeroCuenta = _numeroCuentaController.text;
    Usuario usuario =
        usuarioService.obtenerUsuarioPorNumeroCuenta(numeroCuenta);

    setState(() {
      _usuario = usuario;
    });
  }

  Widget _buildUserInfo(String label, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF003366),
          ),
        ),
        SizedBox(height: 8),
        Text(
          value,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        SizedBox(height: 16),
      ],
    );
  }

  @override
  void dispose() {
    _numeroCuentaController.dispose();
    super.dispose();
  }
}
