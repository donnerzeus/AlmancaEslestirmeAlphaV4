import 'package:almancaeslestirme/model/user_database_provider.dart';
import 'package:almancaeslestirme/model/user_model.dart';
import 'package:flutter/material.dart';
import 'user_list_view.dart';

abstract class UserListViewModel   {

  UserDatabaseProvider userDatabaseProvider;

  UserModel userModel = UserModel();
  List<UserModel> userList = [];

 Future getUserList() async {
 userList =  await userDatabaseProvider.getList();
 //setState(() {});
 }



  @override
  void initstate() {
   //super.initState();
    userDatabaseProvider = UserDatabaseProvider();
    userDatabaseProvider.open();
  }
Future<void> saveModel() async{
 final result = await userDatabaseProvider.insert(userModel);
 print(result);
}
}


