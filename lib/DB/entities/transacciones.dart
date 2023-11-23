import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
part 'transacciones.g.dart';

@collection 
class transaccion {
  Id id_transaccion = Isar.autoIncrement;

  String? fecha;
  String? monto;
  String? concepto;
  @Index(unique: true, name: 'id_transaccion')


  final Id_cliente = IsarLink<cliente>();
}