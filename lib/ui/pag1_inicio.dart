import 'package:flutter/material.dart';

class pag1_inicio extends StatefulWidget {
  const pag1_inicio({super.key});

  @override
  State<pag1_inicio> createState() => _pag1_inicioState();
}

class _pag1_inicioState extends State<pag1_inicio> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Image(
        image: NetworkImage(
            "https://nombresparatodo.com/wp-content/uploads/2019/11/dulces-scaled-e1573686899939.jpg"),
            
      )),
    );
  }
}
