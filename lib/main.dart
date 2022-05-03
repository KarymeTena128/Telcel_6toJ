import 'package:flutter/material.dart';

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

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/compu1.jpg",
    "assets/images/compu2.jpg",
    "assets/images/compu3.jpg",
    "assets/images/compu4.jpg",
    "assets/images/compu5.jpg",
    "assets/images/compu6.jpg",
    "assets/images/compu7.jpg",
    "assets/images/compu8.jpg",
    "assets/images/compu8.jpg",
    "assets/images/compu8.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Galeria de Computadora"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 10,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
