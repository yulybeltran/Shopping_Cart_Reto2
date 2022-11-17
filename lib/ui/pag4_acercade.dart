import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class pag4_acercade extends StatefulWidget {
  const pag4_acercade({super.key});

  @override
  State<pag4_acercade> createState() => _pag4_acercadeState();
}

class _pag4_acercadeState extends State<pag4_acercade> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.store_mall_directory , color: Colors.blue),
            title: Text("Kamej Candy Store", style: GoogleFonts.acme(),),
           
          ),
           
           ListTile(
            leading: Icon(Icons.phone_android , color: Colors.blue),
            title: Text("3987655788", style: GoogleFonts.acme(),),
            subtitle: Text("Celular", style: GoogleFonts.acme(),)
          ),
           ListTile(
            leading: Icon(Icons.location_city , color: Colors.blue),
            title: Text("Calle 100 # 45- 34", style: GoogleFonts.acme(),),
            subtitle: Text("Dirección", style: GoogleFonts.acme(),)
           
          ),
           ListTile(
            leading: Icon(Icons.mail_lock , color: Colors.blue),
            title: Text("kamejcandyshop@gmail.com", style: GoogleFonts.acme(),),
            subtitle: Text("Email", style: GoogleFonts.acme(),)
          )
        ],
      ),
    );
  }
}
