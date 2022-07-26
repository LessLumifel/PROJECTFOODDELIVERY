import 'package:flutter/material.dart';
import 'package:fooddelivery/utility/signout_proocess.dart';
import 'package:fooddelivery/widget/information_shop.dart';
import 'package:fooddelivery/widget/list_food_menu_shop.dart';
import 'package:fooddelivery/widget/order_list_shop.dart';

import '../utility/my_style.dart';

class MainShop extends StatefulWidget {
  MainShop({Key? key}) : super(key: key);

  @override
  State<MainShop> createState() => _MainShopState();
}

class _MainShopState extends State<MainShop> {
  Widget currentWidget = OrderListShop();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Shop'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () => signOutProcess(context),
          )
        ],
      ),
      drawer: showDrawer(),
      body: currentWidget,
    );
  }

  Drawer showDrawer() => Drawer(
        child: ListView(
          children: <Widget>[
            showHeadDrawer(),
            homeMenu(),
            foodMenu(),
            informationMenu(),
            signOutMenu(),
          ],
        ),
      );

  ListTile homeMenu() => ListTile(
        leading: Icon(Icons.home),
        title: Text('รายการอาการที่ลูกค้าสั่ง'),
        subtitle: Text('รายการอาหารที่ยังไม่ได้ทำส่งลูกค้า'),
        onTap: () {
          setState(() {
            currentWidget = OrderListShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile foodMenu() => ListTile(
        leading: Icon(Icons.fastfood),
        title: Text('รายการอาหารของร้าน'),
        subtitle: Text('รายการอาหารของร้าน'),
        onTap: () {
          setState(() {
            currentWidget = ListFoodMenuShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile informationMenu() => ListTile(
        leading: Icon(Icons.info),
        title: Text('รายละเอียดของร้าน'),
        subtitle: Text('รายละเอียดของร้าน พร้อม Edit'),
        onTap: () {
          setState(() {
            currentWidget = InformationShop();
          });
          Navigator.pop(context);
        },
      );

  ListTile signOutMenu() => ListTile(
        leading: Icon(Icons.exit_to_app),
        title: Text('Sign Out'),
        subtitle: Text('Sign Out แล้วกลับไปหน้าแรก'),
        onTap: () => signOutProcess(context),
      );
  UserAccountsDrawerHeader showHeadDrawer() {
    return UserAccountsDrawerHeader(
      decoration: MyStyle().myBoxDecoration('shop.png'),
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
