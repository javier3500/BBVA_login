import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
part 'transacciones.g.dart';

@collection 
class transaccion {
  Id id = Isar.autoIncrement;
  String? fecha;
  String? monto;
  String? concepto;
  String? correo;
}