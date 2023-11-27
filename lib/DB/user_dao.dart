import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
import 'package:login_session/DB/isar.dart';


//CLASE USUARIO-------------------------
class UserDao {
  final isar = IsarHelper.instance.isar;

  Future<List<usuario>> getAll() async{
    return isar.usuarios.where().findAll();
  }

  Future<bool> deteleUser(usuario user) async {
    return isar.writeTxn(() => isar.usuarios.delete(user.id));
  }

  Future<int> insertUser(usuario user) async {
    return isar.writeTxn(() => isar.usuarios.put(user));
  }
}


//CLASE CLIENTE-------------------------
class ClientDao{
  final isar = IsarHelper.instance.isar;

  Future<List<cliente>> getAll() async{
    return isar.clientes.where().findAll();
  }

  Future<bool> insertClient(cliente cliente) async {
    await isar.writeTxn(() async{
      await isar.clientes.put(cliente);
    });
    return true;
  }
}


//CLASE TRANSACCION-------------------------
class TransaccionDao{
   final isar = IsarHelper.instance.isar;

  //obtener todas las transacciones
  Future<List<transaccion>> getAll() async{
    return isar.transaccions.where().findAll();
  }

  //insertar transaccion
  Future<int> insertUser(cliente cliente) async {
    return isar.writeTxn(() => isar.clientes.put(cliente));
  }
}