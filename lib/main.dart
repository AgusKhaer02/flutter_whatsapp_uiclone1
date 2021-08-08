import 'package:flutter/material.dart';
import 'package:whatsapp_ui1/pages/main_wa/main_wa.dart';

void main(){
    runApp(WhatsappApp());
}

class WhatsappApp extends StatelessWidget {
  const WhatsappApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Your title app",
      theme: ThemeData(
        primaryColor: Color(0xFF075E55)
      ),
      home: MainWA(),
    );
  }
}
