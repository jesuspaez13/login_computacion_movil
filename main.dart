import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(alignment: Alignment.center, padding: EdgeInsets.all(10),
                    child: Text('Decoraciones JP', style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),

                Container(alignment: Alignment.center, padding: EdgeInsets.all(10),
                    child: Text('Iniciar sesión', style: TextStyle(fontSize: 20),
                    )),

                Container(padding: EdgeInsets.all(10), child: TextField(
                    controller: nameController, decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: 'Usuario o correo',
                    ),),),

                Container(padding: EdgeInsets.fromLTRB(10, 10, 10, 0), child: TextField(
                    obscureText: true, controller: passwordController,
                  decoration: InputDecoration(border: OutlineInputBorder(),
                      labelText: 'Contraseña',
                    ),),),
                FlatButton(
                 onPressed: (){
                   //forgot password screen
                 }, textColor: Colors.black, child: Text('Has olvidado tu contraseña?'),
                ),

                Container(height: 50, padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white, color: Colors.lightGreen,
                      child: Text('Ingresar'), onPressed: () {
                        print(nameController.text);print(passwordController.text);
                      },
                    )),

                Container(
                    child: Row(
                      children: <Widget>[
                        Text('No tienes una cuenta?'),
                        FlatButton(textColor: Colors.lightGreen, child: Text('Inscribirse',
                            style: TextStyle(fontSize: 15),
                          ),
                          onPressed: () {
                            //signup screen
                          },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}