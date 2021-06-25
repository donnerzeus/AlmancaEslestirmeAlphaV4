import 'package:almancaeslestirme/model/database_model.dart';
import 'package:sqflite/sqflite.dart';



abstract class DatabaseProvider<T extends DatabaseModel> {


  Future open();
  Future<T> getItem(int id);
  Future<List<T>> getList();
  Future<bool> updateItem(int id, T model);
  Future<bool> removeItem(int);
  Future<bool> insertItem(T model);

  Database database;


  Future<void> close() async{
    await database.close();
  }
}
