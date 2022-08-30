// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ramazanbayramimesajlari/Widgetler.dart';
import 'package:ramazanbayramimesajlari/resimliMesajlarEkrani.dart';
import 'package:ramazanbayramimesajlari/yaz%C4%B1l%C4%B1MesajlarEkrani.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  AssetsAudioPlayer.setupNotificationsOpenAction((notification) {
    return true;
  });
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),

  );

}

class MyApp extends StatefulWidget {
   MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AssetsAudioPlayer player = AssetsAudioPlayer();

//------------------------
  late InterstitialAd interstitialAd;
  bool isLoading = false;
  void initAdd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/7511216366' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded(InterstitialAd ad) {
    interstitialAd = ad;
    isLoading = true;
  }
  //----------
  late InterstitialAd interstitialAdiki;
  bool isLoadingiki = false;
  void initAddiki() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/5713513991' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadediki, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadediki(InterstitialAd ad) {
    interstitialAdiki = ad;
    isLoadingiki = true;
  }

//------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdd();
    initAddiki();
  }
  @override
  Widget build(BuildContext context) {
    var GenislikAyari = MediaQuery.of(context).size.width;
    var YukseklikAyari = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                  image: AssetImage('images/arkaplan.gif'), fit: BoxFit.fill),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    if(isLoading){
                      interstitialAd.show();
                    }
                    player.open(Audio('sounds/acilis.mp3'));
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder: (context, a, b) => ResimliEkranim(),
                        ));
                  },
                  child: AnaEkranContainer(
                      MenuYazisi: 'Resimli Mesajlar',
                      GenislikAyari: GenislikAyari,
                      YukseklikAyari: YukseklikAyari),
                ),
                GestureDetector(
                  onTap: () {
                    if(isLoading){
                      interstitialAdiki.show();
                    }
                    player.open(Audio('sounds/acilis.mp3'));
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, a, b) => yaziliMesajlarEkrani(),
                      ),
                    );
                  },
                  child: AnaEkranContainer(
                      MenuYazisi: 'Kısa Yazılı Mesajlar',
                      GenislikAyari: GenislikAyari,
                      YukseklikAyari: YukseklikAyari),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
