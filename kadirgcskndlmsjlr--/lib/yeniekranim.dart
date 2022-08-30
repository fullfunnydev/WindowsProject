// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'dart:io';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:kandilmesaji/ekranayarlar%C4%B1.dart';
import 'package:kandilmesaji/veriler.dart';
import 'package:lottie/lottie.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;

class yaziliEkranim extends StatefulWidget {




  @override
  State<yaziliEkranim> createState() => _yaziliEkranimState();
}

class _yaziliEkranimState extends State<yaziliEkranim> {

  late InterstitialAd interstitialAd5;
  bool isLoading5=false;

  void initAdd5() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/3531507126',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded5, onAdFailedToLoad: (error) {}));
  }
  void onAdLoaded5(InterstitialAd ad) {
    interstitialAd5=ad;
    isLoading5=true;
  }

  @override
  void initState() {
    super.initState();
    initAdd5();
  }


  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(69),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network(
                    'https://icons.iconarchive.com/icons/designbolts/religious-symbol/256/ALLAH-icon.png'),
                radius: 55,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Lottie.network(
                    'https://assets7.lottiefiles.com/packages/lf20_lhh2mjhe.json'),
                radius: 60,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network(
                    'https://icons.iconarchive.com/icons/designbolts/religious-symbol/256/Dua-icon.png'),
                radius: 55,
              ),
            ],
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'images/mesajekrani.gif'),
                fit: BoxFit.fill)),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: YaziliMesajlar.length,
            itemBuilder: (BuildContext c, int i) {

                Future yaziyiPaylas(BuildContext) async {
                  var mesaj = YaziliMesajlar[i].toString();
                  await Share.share(mesaj);
                }
                //---------------------------------------------------
              if(isLoading5){
                switch(i){
                  case 5: interstitialAd5.show();
                  break;
                  case 10: interstitialAd5.show();
                  break;
                  case 15:interstitialAd5.show();
                  break;
                  case 20:interstitialAd5.show();
                  break;
                  case 25:interstitialAd5.show();
                }
              }
              return AnimationConfiguration.staggeredList(
                position: i,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.fastLinearToSlowEaseIn,
                  horizontalOffset: 30,
                  verticalOffset: 300.0,
                  child: FlipAnimation(
                    duration: Duration(milliseconds: 3000),
                    curve: Curves.fastLinearToSlowEaseIn,
                    flipAxis: FlipAxis.y,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlurryContainer(
                        height: _w/1.5,
                        width: _w / 4,
                        blur: 8,
                        //bgColor: Color(0xff009900),
                         //bgColor: Color(0xffcc0000),
                        bgColor: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('${YaziliMesajlar[i]}',style: EkranAyarlari.MesajEkraniYaziFont),
                          GestureDetector(
                            onTap: (){
                             yaziyiPaylas(BuildContext);
                            },
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 44,
                              child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_ZOuxyx.json'),
                            ),
                          ),
                          ],
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

/*
Container(
                    margin: EdgeInsets.only(bottom: _w / 20),
                    height: _w / 4,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 40,
                          spreadRadius: 10,
                        ),
                      ],
                    ),
                  ),
 */
