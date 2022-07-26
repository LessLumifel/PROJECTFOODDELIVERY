import 'package:flutter/material.dart';

class ListFoodMenuShop extends StatefulWidget {
  ListFoodMenuShop({Key? key}) : super(key: key);

  @override
  State<ListFoodMenuShop> createState() => _ListFoodMenuShopState();
}

class _ListFoodMenuShopState extends State<ListFoodMenuShop> {
  @override
  Widget build(BuildContext context) {
    return Text('รายการอาหารในร้าน');
  }
}
