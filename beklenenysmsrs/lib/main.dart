// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:beklenenysmsrs/ekranSabitleri.dart';
import 'package:beklenenysmsrs/home_page.dart';
import 'package:flutter/material.dart';
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
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: EkranSabitlerim.appbarArkaPlanRengi,
            shape: RoundedRectangleBorder(
              borderRadius: EkranSabitlerim.appbarBorderRadius,
            ),
            bottom: PreferredSize(
              child: Column(
                children: [
                Text('KARİZMATİK KELİMELER',style: EkranSabitlerim.appbarTextStilim),
                Text('VE ANLAMLARI',style: EkranSabitlerim.appbarTextStilim),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    child:Image.network(EkranSabitlerim.ResimLenkim2,fit: BoxFit.fill),
                    ),
                ],
              ),
              preferredSize: Size.fromHeight(80),
            ),
          ),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HomePage(),
              ],
              ),
          ),
          ),
      ),
    );
  }
}


