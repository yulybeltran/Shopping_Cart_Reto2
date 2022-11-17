import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../clases/productos.dart';

class controladorGeneral extends GetxController {
  final _posicionPagina = 0.obs;
  final pro = <productos>[].obs;
  @override
  void onInit() {
    pro.add(productos(
      1,
      "Trululu",
      "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2022/09/chocolores12.jpg?w=480&ssl=1",
      0,
      12000,
    ));
    pro.add(productos(
        2,
        "m & m",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2020/10/CHOCOLATE-MM-COLORES-462-G-Y323G.jpg?w=450&ssl=1",
        0,
        32100));
    pro.add(productos(
        3,
        "Almendras",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2020/10/ALMENDRAS-DULCELGAL-X-250-GR.jpg?w=450&ssl=1",
        0,
        18500));
    pro.add(productos(
        4,
        "Ferrero Rocher",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2020/10/FERRERO-CHAMPAGNE-X-8-UND.jpg?w=480&ssl=1",
        0,
        36000));
    pro.add(productos(
        5,
        "Mani",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2022/10/ROCKLETS-150.jpg?fit=2000%2C2000&ssl=1",
        0,
        17300));
    pro.add(productos(
        6,
        "Jumbo Jet",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2021/08/jumbo-3.jpg?w=480&ssl=1",
        0,
        38500));
    pro.add(productos(
        7,
        "Pirulin",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2020/10/Pirullin.jpg?w=480&ssl=1",
        0,
        26000));
    pro.add(productos(
        8,
        "Biscotto",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2022/10/BISCOTTO-60G.jpg?fit=2000%2C2000&ssl=1",
        0,
        36400));
    pro.add(productos(
        9,
        "Chicles Wacky",
        "https://i0.wp.com/candyjobs.com.co/wp-content/uploads/2022/11/WACKY-MORA-AZUL.jpg?fit=2000%2C2000&ssl=1",
        0,
        153000));

    // TODO: implement onInit
    super.onInit();
  }

  void cambiarposicion(int x) {
    _posicionPagina.value = x;
  }

  int get posicionPagina => _posicionPagina.value;

  void cambiarCantidad(int posicion, int valor) {
    print(
        "posicion = " + posicion.toString() + " | valor = " + valor.toString());
    pro[posicion].cantidad = valor;
  }

  int calcularTotal() {
    int total = 0;
    for (int i = 0; i < pro.length; i++) {
      total = total + pro[i].cantidad * pro[i].precio;
    }

    return total;
  }

  void limpiartodo() {
    for (int i = 0; i < pro.length; i++) {
      pro[i].cantidad = 0;
    }
    calcularTotal();
  }
}
