import 'package:flutter/material.dart';
import 'test_scores.dart';
import 'attendance.dart';

class FirstScreen extends StatefulWidget{
  
  FirstScreenState createState() => new FirstScreenState();
    
}

class FirstScreenState extends State<FirstScreen>{
  build(context){

  final col =[
      new DataColumn(
        label: const Text('Column 1')
      ),

      new DataColumn(
        label: const Text('Column 2')
      )
    ];

    final row1 =[
      new DataRow(
        cells: [
          new DataCell(new Text('NAME')),
          new DataCell(new Text('Ritik Rathi'))
        ]
      ),

      new DataRow(
        cells: [
          new DataCell(new Text('ID')),
          new DataCell(new Text('02816403217'))
        ]
      ),

      new DataRow(
        cells: [
          new DataCell(new Text('Gender')),
          new DataCell(new Text('Male'))
        ]
      ),

      new DataRow(
        cells: [
          new DataCell(new Text('Batch')),
          new DataCell(new Text('B.Tech - CSE (2017)'))
        ]
      )
    ];


    return new Scaffold(
      appBar: new AppBar(title: new Text('Student details')),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Ritik Rathi'),
              accountEmail: new Text('testemail@test.com'),
              currentAccountPicture: new CircleAvatar(
                backgroundImage: new NetworkImage('http://i.pravatar.cc/300'),
              ),
            ),

            new ListTile(
              title: new Text('Test Scores'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new TestScore()));}
            ),

            new ListTile(
              title: new Text('Attendance'),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new Attendance()));}
            )
          ],
        ),
      ),
 
      body: ListView(
        children: [
          Container(padding: EdgeInsets.only(bottom: 20.0)),
          CircleAvatar(
            backgroundColor: Colors.blue,
            backgroundImage: NetworkImage('https://robohash.org/aseem'),
            maxRadius: 150.0,
          ),
          Container(padding: EdgeInsets.only(bottom: 20.0)),
          new Padding(padding: EdgeInsets.only(left: 20.0, right: 20.0)),
          new Material(
            child: DataTable(columns: col, rows: row1,)
          )
        ]

        )
      );
    
  }
}