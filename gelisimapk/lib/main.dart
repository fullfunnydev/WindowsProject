// ignore_for_file: prefer_const_constructors

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gelisimapk/AcilisEkrani.dart';
//import 'package:gelisimapk/AcilisEkrani.dart';
import 'package:gelisimapk/AnaSayfa.dart';

import 'Sayfalar/AltBasliklar/Yabanci_Dil_Ögrenme_Alt_Baslik.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AcilisEkrani()
      ),
    );
  }
}
