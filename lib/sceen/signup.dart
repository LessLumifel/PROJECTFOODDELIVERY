import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery/utility/my_style.dart';
import 'package:fooddelivery/utility/normal_dialog.dart';

class SignUp extends StatefulWidget {
  SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  var chooseType, name, user, password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ListView(
        padding: EdgeInsets.all(30),
        children: <Widget>[
          myLogo(),
          MyStyle().mySizebox(),
          showAppname(),
          MyStyle().mySizebox(),
          nameForm(),
          MyStyle().mySizebox(),
          userForm(),
          MyStyle().mySizebox(),
          passwordForm(),
          MyStyle().mySizebox(),
          MyStyle().showTitleH2('ประเภทของสมาชิก : '),
          userRadio(),
          shopRadio(),
          riderRadio(),
          MyStyle().mySizebox(),
          registerButton(),
        ],
      ),
    );
  }

  Widget registerButton() => Container(
        width: 250,
        child: RaisedButton(
          color: MyStyle().darkColor,
          onPressed: () {
            print(
                'name = $name,user = $user,password =$password,choosetype=$chooseType');
            if (name == null ||
                name.isEmpty ||
                user == null ||
                user.isEmpty ||
                password == null ||
                password.isEmpty) {
              print('Have Space');
              NormalDialog(context, 'มีช่องว่าง กรุณากรองทุกช่อง');
            } else if (chooseType == null) {
              NormalDialog(context, 'โปรดเลือกประเภทของผู้สมัคร');
            } else {
              checkUser();
            }
          },
          child: Text(
            'Register',
            style: TextStyle(color: Colors.white),
          ),
        ),
      );

  Future<Null> checkUser() async {
    String url =
        'https://www.androidthai.in.th/edumall/getUserWhereUserLui.php?isAdd=true&User=$user';
    try {
      Response response = await Dio().get(url);
      if (response.toString() == 'null') {
        registerThread();
      } else {
        NormalDialog(context, '$user มีผู้ใช้งานแล้ว กรุณาเปลี่ยน User ใหม่');
      }
    } catch (e) {}
  }

  Future<Null> registerThread() async {
    String url =
        'https://www.androidthai.in.th/edumall/insertUserLui.php?isAdd=true&ChooseType=$chooseType&Name=$name&User=$user&Password=$password';

    try {
      Response response = await Dio().get(url);
      print('res = $response');

      if (response.toString() == 'true') {
        Navigator.pop(context);
      } else {
        NormalDialog(context, 'ไม่สามารถสมัครได้ กรุณาลองใหม่');
      }
    } catch (e) {}
    ;
  }

  Widget userRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          child: Row(
            children: <Widget>[
              Radio(
                value: 'User',
                groupValue: chooseType,
                onChanged: (value) => setState(
                  () {
                    chooseType = value;
                  },
                ),
              ),
              Text(
                'ผู้สั่งอาหาร',
                style: TextStyle(color: MyStyle().darkColor),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget shopRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          child: Row(
            children: <Widget>[
              Radio(
                value: 'Shop',
                groupValue: chooseType,
                onChanged: (value) => setState(
                  () {
                    chooseType = value;
                  },
                ),
              ),
              Text(
                'เจ้าของร้านอาหาร',
                style: TextStyle(color: MyStyle().darkColor),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget riderRadio() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 250,
          child: Row(
            children: <Widget>[
              Radio(
                value: 'Rider',
                groupValue: chooseType,
                onChanged: (value) => setState(
                  () {
                    chooseType = value;
                  },
                ),
              ),
              Text(
                'ผู้ส่งอาหาร',
                style: TextStyle(color: MyStyle().darkColor),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget nameForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child: TextField(
              onChanged: (value) => name = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.face,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Name',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget userForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child: TextField(
              onChanged: (value) => user = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.account_box,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'User',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );

  Widget passwordForm() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250,
            child: TextField(
              onChanged: (value) => password = value.trim(),
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.lock,
                  color: MyStyle().darkColor,
                ),
                labelStyle: TextStyle(color: MyStyle().darkColor),
                labelText: 'Password',
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().darkColor)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyStyle().primaryColor)),
              ),
            ),
          ),
        ],
      );
  Row showAppname() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyStyle().showTitle('Project Food Delivery'),
      ],
    );
  }

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MyStyle().showlogo(),
        ],
      );
}
