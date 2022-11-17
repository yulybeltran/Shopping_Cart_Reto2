import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reto_2_equipo_10/controlador/controladorGeneral.dart';
import 'ui/home.dart';

void main() {
  Get.put(controladorGeneral());
  runApp(const MyApp());
}
