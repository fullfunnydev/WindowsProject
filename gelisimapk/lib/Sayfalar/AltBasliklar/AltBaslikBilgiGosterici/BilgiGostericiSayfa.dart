// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelisimapk/Data/Ki%C5%9Fisel_Geli%C5%9Fim_Sayfasi_Listesi.dart';
import 'package:gelisimapk/Ekransabitlerim.dart';
import 'package:lottie/lottie.dart';

class YabaciDilAltBaslikBilgileri extends StatefulWidget {
  const YabaciDilAltBaslikBilgileri({Key? key}) : super(key: key);

  @override
  State<YabaciDilAltBaslikBilgileri> createState() =>
      _YabaciDilAltBaslikBilgileriState();
}

class _YabaciDilAltBaslikBilgileriState
    extends State<YabaciDilAltBaslikBilgileri> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black ,
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.transparent,
          title: Text(''),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [

                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Lottie.network('https://assets3.lottiefiles.com/private_files/lf30_tq5QQe.json'),
                  radius: 65,
                ),

              ],
            ),
          ),
        ),
        body: Ekran(),
      ),
    );
  }
}

class Ekran extends StatefulWidget {
  const Ekran({Key? key}) : super(key: key);

  @override
  State<Ekran> createState() => _EkranState();
}

class _EkranState extends State<Ekran> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var heig = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    YYabanciDilOgrenmeAltBaslikBilgileri()
                        .KokoTeknigiBilgisi[0]
                        .TextBilgisi
                        .toString(),
                    style: EkranSabitlerim.BilgigostericiSayfaTextStil,
                    strutStyle: StrutStyle(
                      leading: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
