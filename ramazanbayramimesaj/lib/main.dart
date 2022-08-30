import 'package:flutter/material.dart';
import 'package:ramazanbayramimesaj/Main_Secreen.dart';
import 'package:ramazanbayramimesaj/animasyon.dart';
import 'package:ramazanbayramimesaj/blurryContainer.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
void main() {
  runApp( MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ramazan Bayramı Mesajları'),
        ),
        body: MainSecreen()
      ),
    );
  }
}
