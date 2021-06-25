import 'package:almancaeslestirme/model/user_model.dart';
import 'package:sqflite/sqflite.dart';
class UserDatabaseProvider {
  String _userDatabaseName = "userDatabase";

  String _userTableName ="user";
  int _version =1;
  Database database;


  String columnUserName ="userName";
  String columnpassword ="password";
  String columnmail ="mail";
  String columnage = "age";
  String columnisadmin = "isadmin";
  String columnId = "id";



Future<void> open() async {
  database = await openDatabase
    (_userDatabaseName,
      version: _version,
      onCreate: (db, version){
      createTable(db);
  });
}


void createTable(Database db)async{

 await db.execute(
      '''CREATE TABLE $_userTableName (        
                $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
                $columnUserName VARCHAR(20),
                $columnpassword VARCHAR(20),  
                $columnmail VARCHAR(20),
                $columnage INTEGER,
                $columnisadmin BOOLEAN)''',
  );

}


Future<List<UserModel>> getList() async {
  if(database != null){
open();
  }
  List<Map> userMaps = await database.query(_userTableName);
return userMaps.map((e) =>  UserModel.fromJson(e)).toList();
}

Future<UserModel> getItem(int id) async {
  if(database != null){
    open();
  }
  final userMaps = await database.query(
    _userTableName,
    where: '$columnId =?',
    columns: [columnId],
    whereArgs: [id],
  );
  if (userMaps.isNotEmpty)
    return UserModel.fromJson(userMaps.first);

  else
    return null;
}

Future<bool> delete(int id) async{
  if(database != null){
    open();
  }
  final userMaps = await database.delete(
    _userTableName,
    where: '$columnId = ?',
    whereArgs: [id]
  );
  return userMaps != null;
  }



  Future<bool> insert(UserModel model) async{
    if(database != null){
      open();
    }
    final userMaps = await database.insert(
        _userTableName,
        model.toJson(),

    );
    return userMaps != null;
  }




  Future<bool> update(int id, UserModel model) async{
    if(database != null){
      open();
    }
    final userMaps = await database.update(
        _userTableName,
        model.toJson(),
        where: '$columnId =?',
        whereArgs: [id]


    );
    return userMaps != null;
  }



 Future<void> close() async{
    await database.close();
  }



}




