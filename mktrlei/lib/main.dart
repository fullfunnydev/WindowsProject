// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:mktrlei/home_page.dart';
import 'package:mktrlei/resimContainer.dart';
import 'package:mktrlei/sabitler.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(

        appBar: AppBar(title: Text(''),
        backgroundColor: EkranSabitleri.appbarArkaPlanRengi,
        centerTitle: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(32))
        ),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('MUHABBET KUŞU',style: EkranSabitleri.appbarTextStil),
              Text('TÜRLERİ',style: EkranSabitleri.appbarTextStil),

            ],
          ),
        ),
        ),
        backgroundColor: Colors.indigo,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            resimContainer(),
            homePage(),
          ],
        ),
      )),
    );
  }
}
