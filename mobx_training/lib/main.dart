import 'package:flutter/material.dart';
import 'package:mobx_training/login/login_controller.dart';
import 'file:///C:/Users/Felps/Desktop/Mobx_training/mobx_training/lib/home/home_screen.dart';
import 'package:mobx_training/login/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider<Login_controller>(
      create: (_) => Login_controller(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: Colors.black,
            buttonTheme: ButtonThemeData(
              buttonColor: Colors.black,
              textTheme: ButtonTextTheme.primary,
            )),
        home: Login(),
      ),
    );
  }
}
