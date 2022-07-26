import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fooddelivery/utility/signout_proocess.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utility/my_style.dart';

class MainUser extends StatefulWidget {
  MainUser({Key? key}) : super(key: key);

  @override
  State<MainUser> createState() => _MainUserState();
}

class _MainUserState extends State<MainUser> {
  String? nameUser;
  @override
  void initState() {
    super.initState();
    findUser();
  }

  Future<Null> findUser() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      nameUser = preferences.getString('Name')!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameUser == null ? 'Main User' : '$nameUser login'),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () => signOutProcess(context))
        ],
      ),
      drawer: showDrawer(),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
          ],
        ),
      );

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxDecoration('user.jpg'),
      currentAccountPicture: MyStyle().showlogo(),
      accountName: Text(
        '$nameUser Login',
        style: TextStyle(color: MyStyle().TextColer),
      ),
      accountEmail:
          Text('Please Login', style: TextStyle(color: MyStyle().TextColer)),
    );
  }
}
