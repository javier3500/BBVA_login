
import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
import 'package:login_session/DB/isar.dart';
import 'package:login_session/Datos/usuarios.dart';

class usuarioService{
  late Future<Isar> db;

  UsuarioService(){
    db = IsarService().db;
  }

  Future<List<usuario>> getAllusuarios() async{
    final isar = await db;
    return await isar.usuarios.where().findAll();
  }

  Future<bool> saveUsuario(usuario newUsuario) async {
    try{
      final isar = await db;

      await isar.writeTxn(() async {
        await isar.usuarios.put(newUsuario);
      });
      return true;
    }on IsarError catch(error){
      throw Exception(error.message);
    }
  }
}