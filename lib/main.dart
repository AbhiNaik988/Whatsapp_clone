import "package:flutter/material.dart";
import 'package:whatsapp_clone/whatsapp_home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: ThemeData(
        primaryColor: const Color(0xff075E54),
        accentColor: const Color(0xff25D366),
      ),
      home: const WhatsAppHome(),
    );
  }
}
