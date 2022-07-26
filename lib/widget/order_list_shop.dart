import 'package:flutter/material.dart';

class OrderListShop extends StatefulWidget {
  OrderListShop({Key? key}) : super(key: key);

  @override
  State<OrderListShop> createState() => _OrderListShopState();
}

class _OrderListShopState extends State<OrderListShop> {
  @override
  Widget build(BuildContext context) {
    return Text('รายการอาหารที่ลูกค่าสั่ง');
  }
}
