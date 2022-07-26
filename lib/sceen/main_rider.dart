import 'package:flutter/material.dart';
import 'package:fooddelivery/utility/signout_proocess.dart';

import '../utility/my_style.dart';

class MainRider extends StatefulWidget {
  MainRider({Key? key}) : super(key: key);

  @override
  State<MainRider> createState() => _MainRiderState();
}

class _MainRiderState extends State<MainRider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Rider'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => signOutProcess(context),
          )
        ],
      ),
      drawer: showDrawer(),
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            homeMenu(),
          ],
        ),
      );

  ListTile homeMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาการที่ลูกค้าสั่ง'),
        subtitle: Text('รายการอาหารที่ยังไม่ได้ทำส่งลูกค้า'),
      );

  ListTile foodMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาการของร้าน'),
        subtitle: Text('รายการอาหารของร้าน'),
      );

  ListTile informationMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาการที่ลูกค้าสั่ง'),
        subtitle: Text('รายการอาหารที่ยังไม่ได้ทำส่งลูกค้า'),
      );

  ListTile signOutMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาการที่ลูกค้าสั่ง'),
        subtitle: Text('รายการอาหารที่ยังไม่ได้ทำส่งลูกค้า'),
      );

  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxDecoration('rider.png'),
      currentAccountPicture: MyStyle().showlogo(),
      accountName: Text(
        'Login',
        style: TextStyle(color: MyStyle().blackColor),
      ),
      accountEmail:
          Text('Please Login', style: TextStyle(color: MyStyle().blackColor)),
    );
  }
}
