import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
part 'cliente.g.dart';

@collection 
class cliente {
  Id id = Isar.autoIncrement;

  String? nombre_completo;
  String? telefono;
  String? domicilio;
  String? CURP;

  @Index(unique: true, name: 'correo')
  String? correo;
  String? saldo;

  @Backlink(to: 'Id_cliente')
  final Id_cliente = IsarLinks<usuario>();
}