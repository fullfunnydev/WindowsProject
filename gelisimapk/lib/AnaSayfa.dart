// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gelisimapk/Data/AnaSayfaResimLinki.dart';
import 'package:gelisimapk/Ekransabitlerim.dart';
import 'package:gelisimapk/Sayfalar/Ki%C5%9Fisel_Geli%C5%9Fim_Sayfasi.dart';
import 'package:lottie/lottie.dart';


import 'AnaSayfaContainer.dart';

class AnaSayfa extends StatefulWidget {
  const AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: EkranSabitlerim.AnaSayfaAppBarBorderRadius,
          ),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Lottie.asset('assets/lottie/anasayfa.json'),
                  radius: 78,
                ),
              ],
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          primary: false,
          padding: EdgeInsets.all(6),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>Kisisel_gelisim_Ekrani()));
              },
              yazi_Bir: 'Kişisel',
              yazi_Iki: 'Gelişim',
              yazi_Uc: '',
              Child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_m84fyesq.json'),
            ),
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                print('tiklama 2 çalişti');
              },
                yazi_Bir: 'Motivasyon',
                yazi_Iki: '',
                yazi_Uc: '',
              Child: Lottie.network('https://assets2.lottiefiles.com/private_files/lf30_xnjjfyjt.json'),

            ),
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                print('tıklama 3 çalıştı');
              },
              yazi_Bir: 'Kişisel',
              yazi_Iki: 'Gelişim',
              yazi_Uc: 'Yazıları',
              Child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_fnm7gv5d.json'),

            ),
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                print('tıklama 4 çalıştı');
              },
              yazi_Bir: 'Kişisel',
                yazi_Iki: 'Gelişim',
                yazi_Uc: 'Hikayeleri',
              Child: Lottie.network('https://assets9.lottiefiles.com/private_files/lf30_jlnohmax.json'
                  ),
                ),
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                print('tıklama 5 çalıştı');
              },
              yazi_Bir: 'Kişisel',
              yazi_Iki: 'Gelişim',
              yazi_Uc: 'Testleri',
              Child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_DMgKk1.json'),


            ),
            AnaSayfaContainer(
              Tiklama_Fonsiyonu: (){
                print('tıklama 3 çalıştı');
              },
              yazi_Bir: 'Film',
              yazi_Iki: 'Kitap',
              yazi_Uc: 'Önerisi',
              Child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_jhlaooj5.json'),

            ),
          ],
        ),
      ),
    );
  }
}
