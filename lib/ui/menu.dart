import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../controlador/controladorGeneral.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  controladorGeneral Control = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        child:  Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.yellow),
              child: UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/media/D-O2ioFW4AA6FTC.jpg"),
                  ),
                  accountName: Text("Yuly Marcela Beltran", style: GoogleFonts.acme(),),
                  accountEmail: Text("byuly@uninorte.edu.co" , style: GoogleFonts.acme(),)),
            ),
            Divider(),
            Expanded(
                child: ListView(children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Inicio" , style: GoogleFonts.acme(),),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(0);
                },
              ),
              ListTile(
                
                leading: Icon(Icons.monetization_on_outlined),
                title: Text("Productos" , style: GoogleFonts.acme(),),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(1);
                },
              ),
              ListTile(
                leading: Icon(Icons.shopify),
                title: Text("Mis compras" , style: GoogleFonts.acme(),),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(2);
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Acerca de Kamej Candy Shop" , style: GoogleFonts.acme(),),
                trailing: Icon(Icons.arrow_right),
                onTap: () {
                  Navigator.pop(context);
                  Control.cambiarposicion(3);
                },
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
