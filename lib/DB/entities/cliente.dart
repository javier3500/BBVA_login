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
  int? saldo = 10000;
  @Index(unique: true, name: 'correo')
  String? correo;
 

  @Backlink(to: 'Id_cliente')
  final Id_cliente = IsarLinks<usuario>();
}