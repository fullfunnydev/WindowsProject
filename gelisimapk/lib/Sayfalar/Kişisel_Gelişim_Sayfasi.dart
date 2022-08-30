// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gelisimapk/Data/Ki%C5%9Fisel_Geli%C5%9Fim_Sayfasi_Listesi.dart';
import 'package:gelisimapk/Ekransabitlerim.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/%C3%B6zduven_Alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Beden_Dili_Alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Diksiyon_alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Etkili_iletisim_Alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Hafiza_Alt_baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Kisisel_imaj_Alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Motivasyon_Alt_Baslik.dart';
import 'package:gelisimapk/Sayfalar/AltBasliklar/Nlp_alt_Baslik.dart';
import 'package:lottie/lottie.dart';

import 'AltBasliklar/Yabanci_Dil_Ögrenme_Alt_Baslik.dart';

class Kisisel_gelisim_Ekrani extends StatefulWidget {
   //final Function sayfalarArasiGecis;
  // Kisisel_gelisim_Ekrani({required this.sayfalarArasiGecis});
  @override
  State<Kisisel_gelisim_Ekrani> createState() => _Kisisel_gelisim_EkraniState();
}

class _Kisisel_gelisim_EkraniState extends State<Kisisel_gelisim_Ekrani> {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellowAccent,
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: EkranSabitlerim.appbarBorderRadius,
          ),
          backgroundColor: Color(0xffe32636),
          bottom: PreferredSize(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Lottie.network(
                      EkranSabitlerim.kelimelerEkraniCircAvatarResim),
                  radius: 78,
                ),
              ],
            ),
            preferredSize: Size.fromHeight(100),
          ),
          title: Text(""),
          centerTitle: true,
        ),
        body: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: Kisiel_gelisim_ekrani_Listesi().EkranBasliklari.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 200),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 3000),
                  curve: Curves.elasticIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 2000),
                    curve: Curves.elasticInOut,
                    child: GestureDetector(
                      onTap: (){
                       if(index==0){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Yabanci_Dil_Alt_Baslik()));
                       }if(index==1){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Etkili_iletisim_Alt_Baslik()));
                       }if(index==2){
                         Navigator.push(context,MaterialPageRoute(builder: (context)=>Beden_Dili_Alt_Baslik()));
                       }if(index==3){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Kisisel_imaj_Alt_Baslik()));
                       }if(index==4){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Ozguven_Alt_Baslik()));
                       }if(index==5){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Motivasyon_Alt_Baslik()));
                       }if(index==6){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Hafiza_Alt_Baslik()));
                       }if(index==7){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Diksiyon_Alt_Baslik()));
                       }if(index==8){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Nlp_Alt_Baslik()));
                       }
                      },
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: CircleAvatar(
                                  radius: 50,
                                  backgroundColor: Colors.transparent,
                                  child: Lottie.network(EkranSabitlerim
                                      .KisiselGelisimBaslikCircileAvatarJson)),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    Kisiel_gelisim_ekrani_Listesi()
                                        .EkranBasliklari[index]
                                        .baslik
                                        .toString(),
                                    style: EkranSabitlerim
                                        .KisiselGelisimEkraniBasliklariTextStil,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        margin: EdgeInsets.only(bottom: _w / 23),
                        height: _w / 3,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
