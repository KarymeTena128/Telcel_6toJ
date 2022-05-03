import 'package:flutter/material.dart';
import 'package:tena/galeria_computadoras.dart';

void main() {
  runApp(TelcelApp());
} //Funcion Principal

class TelcelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Telcel',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: PaginaInicial());
  } //Widget
} //Clase TelcelApp Widget sin estado
