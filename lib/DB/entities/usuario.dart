
import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
part 'usuario.g.dart';

@collection 
class usuario {
  Id id =  Isar.autoIncrement;
  
  String? nombre_usuario;
  String? contrasena;
  
  @Index(unique: true, name: 'correo')
  String? correo;
}