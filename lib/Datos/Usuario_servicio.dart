import 'Usuarios.dart';

class UsuarioService {
  Usuario obtenerUsuarioPorNumeroCuenta(String numeroCuenta) {
    switch (numeroCuenta) {
      case '123456789':
        return Usuario(
          nombre: 'Juan Pérez',
          numeroCuenta: '123456789',
          saldo: 1500.0,
        );
      case '987654321':
        return Usuario(
          nombre: 'María González',
          numeroCuenta: '987654321',
          saldo: 2000.0,
        );
      case '555555555':
        return Usuario(
          nombre: 'Carlos Rodríguez',
          numeroCuenta: '555555555',
          saldo: 1200.0,
        );
      case '888888888':
        return Usuario(
          nombre: 'Ana Martínez',
          numeroCuenta: '888888888',
          saldo: 1800.0,
        );
      case '111111111':
        return Usuario(
          nombre: 'Laura Gómez',
          numeroCuenta: '111111111',
          saldo: 2500.0,
        );
      default:
        return Usuario(
          nombre: 'Usuario Desconocido',
          numeroCuenta: numeroCuenta,
          saldo: 0.0,
        );
    }
  }
}
