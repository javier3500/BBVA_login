import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
import 'package:path_provider/path_provider.dart';

class IsarService{
  late Future<Isar> db;
  
  IsarService(){
    db= openDB();
  }

  Future<Isar> openDB()async {
    final dir = await getApplicationDocumentsDirectory();

    if(Isar.instanceNames.isEmpty){
      return await Isar.open(
        [
          UsuarioSchema,
         TransaccionSchema, 
         ClienteSchema
         ], 
         directory: dir.path,
          inspector: true,
       );
    }

    return Future.value(Isar.getInstance());

  }
}