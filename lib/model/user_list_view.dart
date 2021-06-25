import 'package:flutter/material.dart';
import 'user_list_view_model.dart';

class UserListView extends UserListViewModel {
  @override
  Widget build(BuildContext context){
    return Scaffold(
    floatingActionButton: buildFloatingActionButton,
      body: Card(
        elevation: 20,
        child: buildCenterBody

      ),
    );
  }

  FloatingActionButton get buildFloatingActionButton {
    return FloatingActionButton(onPressed: (){
    saveModel();
      getUserList();

    });
  }

  Center get buildCenterBody {
    return Center(
      child: Wrap(
        children: [
          buildWrapInputBody,
          ListView.builder(
          shrinkWrap:true,
               itemCount: userList.length,
                  itemBuilder: (context, index ) => ListTile(
                        title: Text(userList[index].userName),
                    //subtitle: Text(userList[index].password.toString()),
                  ),
            ),
          ],
        ),
      );
    }


Wrap get buildWrapInputBody {
  Wrap (
    runSpacing: 20,
    children: [
      TextField(
        onChanged: (value) => userModel.userName = value,

        decoration: InputDecoration(
            hintText: "User Name", border: OutlineInputBorder()),),


      TextField(
        onChanged: (value) => userModel.mail = value,
        decoration: InputDecoration(

            hintText: "E-Mail", border: OutlineInputBorder()),),


      TextField(
        onChanged: (value) => userModel.age = int.tryParse(value),
        decoration: InputDecoration(
            hintText: "Phone Number", border: OutlineInputBorder()),),


      TextField(
        onChanged: (value) => userModel.password = int.tryParse(value),
        decoration: InputDecoration(
            hintText: "Şifre", border: OutlineInputBorder()),),
    ],
  );
}
}