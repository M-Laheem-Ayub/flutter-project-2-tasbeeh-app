import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';

//stateless/ statefull widget revision
//App bar
//Variables
//function
//SetState
//SizeBox
//ElevatedButton
//Alignment

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}
