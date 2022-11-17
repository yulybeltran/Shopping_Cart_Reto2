import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2_equipo_10/controlador/controladorGeneral.dart';
import 'package:reto_2_equipo_10/ui/menu.dart';
import 'package:reto_2_equipo_10/ui/pag1_inicio.dart';
import 'package:reto_2_equipo_10/ui/pag2_comprar.dart';
import 'package:reto_2_equipo_10/ui/pag3_misproductos.dart';
import 'package:reto_2_equipo_10/ui/pag4_acercade.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'reto_2 MINTIC',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'KAMEJ CANDY STORE'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

List paginas = [
  pag1_inicio(),
  pag2_comprar(),
  pag3_misproductos(),
  pag4_acercade()
];

class _MyHomePageState extends State<MyHomePage> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: menu(),
      body: Obx(() => paginas[Control.posicionPagina]),
    );
  }
}
