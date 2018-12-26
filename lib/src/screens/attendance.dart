import 'package:flutter/material.dart';

class Attendance extends StatefulWidget{
  AttendanceState createState() => AttendanceState();
}

class AttendanceState extends State<Attendance>{
  build(context){
    return Scaffold(
      appBar: new AppBar(title: Text('Attendance')),
      body: RichText(
  text: TextSpan(
    text: 'Hello ',
    style: DefaultTextStyle.of(context).style,
    children: <TextSpan>[
      TextSpan(text: 'bold', style: TextStyle(fontWeight: FontWeight.bold)),
      TextSpan(text: ' world!'),
    ],
  ),
)
    );
  }
}