import 'package:flutter/material.dart';
//import 'package:path/path.dart'; 
import 'first_page.dart';

class Login extends StatefulWidget{
  LoginState createState() => new LoginState();
}

class LoginState extends State<Login>{

  final formKey = GlobalKey<FormState>();
  String _username = '';
  var _password = '';


  build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new Container(
         child: Form(
                key: formKey,
                child: Column(
                children: [
                 
                  Container(margin: EdgeInsets.only(bottom: 200.0)),
                  userName(),
                  Container(margin: EdgeInsets.only(bottom: 20.0)),
                  passwordField(),    
                  Container(margin: EdgeInsets.only(bottom: 20.0)), 
                  RaisedButton(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      disabledColor: Colors.blue[50],
                      color: Colors.blue,
                      child: Text('Submit'),
                      onPressed: (){
                      // Navigator.of(context).pop();
                     if(formKey.currentState.validate()){
                       
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (BuildContext context) => new FirstScreen()));}

                
          })
  
                
                ]
              )
            ),
      )
    );
  }

  Widget userName(){
    return TextFormField(
      decoration: InputDecoration(
       // contentPadding: EdgeInsets.only(left: 30.0, right: 30.0),
        labelText: 'Username',
        //hasFloatingPlaceholder: true,
        border: OutlineInputBorder(),
      ),
      validator: (val) => 
          !val.contains('@') ? 'Invalid username': null,
      onSaved: (val) => _username = val

    );
  }

  Widget passwordField(){ 
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        //contentPadding: EdgeInsets.only(top: 30.0, bottom: 30.0),
        border: OutlineInputBorder(),
        hintText: 'Password',
        labelText: 'Password'
      ),
      validator: (val) => 
          val.length < 5 ? 'Incorrect password': null,
      onSaved: (val) => _password = val
    );
  }

  

  

}