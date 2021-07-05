import 'package:flutter/material.dart';
import 'package:flutter_crud/components/user_title.dart';
import 'package:flutter_crud/provider/users.dart';
import 'package:flutter_crud/routes/app_routes.dart';
import 'package:provider/provider.dart';



class UserList extends StatefulWidget {

  @override
  _UserListState createState() => _UserListState();
}

class _UserListState extends State<UserList> {

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Usuários '),
        actions: [
          IconButton(
            onPressed: (){
            Navigator.of(context).pushNamed(
              AppRoutes.USER_FORM
            );
            }, 
            icon: Icon(Icons.add),
            ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        
        ),
    );
  }
}