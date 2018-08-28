import 'package:flutter/material.dart';
import 'package:flutter_app/WhatsappScreen.dart';
void main(){
  runApp(new MyApp ());
  }
  
  class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'My Flutter Practice',
      theme: ThemeData(
        primarySwatch: Colors.blue 
      ),
      debugShowCheckedModeBanner: false,
      home: new WhatsAppHome(),
    );
  }
}