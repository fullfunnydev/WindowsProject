// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:kisiselgelisim/acilis_ekrani.dart';

void main() {
  runApp( uygulamam());
}

class uygulamam extends StatelessWidget {
  const uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AcilisEkrani(),
      ),
    );
  }
}
