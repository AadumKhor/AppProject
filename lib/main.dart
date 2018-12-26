import 'package:flutter/material.dart';
import 'src/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  build(context){
    return MaterialApp(
        title: 'Log In',
        home: Scaffold(
          body: Login(),
        ),
    );
  }
}