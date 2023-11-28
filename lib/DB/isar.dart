import 'package:isar/isar.dart';
import 'package:login_session/DB/entities/entities.dart';
import 'package:path_provider/path_provider.dart';
//import 'dart:ui_web';
//import 'package:isar_example/models/expense.dart';

class IsarHelper {
  //singleton
  static IsarHelper? isarHelper;
  const IsarHelper._internal();

  static IsarHelper get instance => isarHelper ??= IsarHelper._internal();
  static Isar? _isarDb;

  Isar get isar => _isarDb!;

  Future<void> init() async {
    if(_isarDb != null) {
      return;
    }
    final path = (await getApplicationDocumentsDirectory()).path;
    _isarDb = await Isar.open([UsuarioSchema,TransaccionSchema, ClienteSchema], directory: path);
  }
}
