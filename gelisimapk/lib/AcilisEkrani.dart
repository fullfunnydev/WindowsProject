// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:gelisimapk/AnaSayfa.dart';
import 'package:lottie/lottie.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'Ekransabitlerim.dart';

class AcilisEkrani extends StatefulWidget {
  const AcilisEkrani({Key? key}) : super(key: key);

  @override
  State<AcilisEkrani> createState() => _AcilisEkraniState();
}

class _AcilisEkraniState extends State<AcilisEkrani> {
  @override
  Widget build(BuildContext context) {
    var yukseklik = MediaQuery.of(context).size.height;
    var genislik = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    EkranSabitlerim.AcilisEkraniArkaPlanresmi,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              height: yukseklik / 1.90,
              decoration: BoxDecoration(color: Colors.black),
            ),
            Text('Hayatın Boyunca Üzerinde',style: EkranSabitlerim.AcilisEkraniYaziStili,),
            Text('Çalışacağın',style: EkranSabitlerim.AcilisEkraniYaziStili,),
            Text('En Büyük Proje Sensin',style: EkranSabitlerim.AcilisEkraniYaziStili,),
            Container(
              child: AnimatedSplashScreen(

                splashIconSize: 150,
                backgroundColor: Colors.black,
                nextScreen: AnaSayfa(),
                splash: Lottie.asset('assets/lottie/brain.json'),
                splashTransition: SplashTransition.sizeTransition,
                duration:4000,
              ),
              height: yukseklik / 3,
              decoration: BoxDecoration(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
