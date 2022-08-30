// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:io';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:ramazanbayramimesajlari/EkranAyarlari.dart';
import 'package:ramazanbayramimesajlari/verilerDart.dart';
import 'main.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ResimliEkranim extends StatefulWidget {
  ResimliEkranim({Key? key}) : super(key: key);
  @override
  State<ResimliEkranim> createState() => _ResimliEkranimState();
}

class _ResimliEkranimState extends State<ResimliEkranim> {
  AssetsAudioPlayer player = AssetsAudioPlayer();
  var ResimIndex = 0;
  IndexArttir() {
    setState(() {
      ResimIndex++;
    });
  }

  IndexAzalt() {
    setState(() {
      ResimIndex--;
    });
  }
  //--------------------------------------------------------------- Ana Resimler Paylaşma fonksiyonu
  Future paylas(BuildContext) async {
    final resimUrl = Resimler[ResimIndex];
    final url = Uri.parse(resimUrl);
    final response = await http.get(url);
    final bytes = response.bodyBytes;
    RenderBox? box = context.findAncestorRenderObjectOfType() as RenderBox;
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/images.gif';
    File(path).writeAsBytesSync(bytes);
    await Share.shareFiles([path],
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
//------------------------------------------------------------------------------------
  //----------------------------------------- ListWiev Paylaş
  Future paylasListWiev(BuildContext,int resimIndexDegeri) async {
    final resimUrl = Resimler[resimIndexDegeri];
    final url = Uri.parse(resimUrl);
    final response = await http.get(url);
    final bytes = response.bodyBytes;
    RenderBox? box = context.findAncestorRenderObjectOfType() as RenderBox;
    final temp = await getTemporaryDirectory();
    final path = '${temp.path}/images.gif';
    File(path).writeAsBytesSync(bytes);
    await Share.shareFiles([path],
        sharePositionOrigin: box.localToGlobal(Offset.zero) & box.size);
  }
  //---------------------------------------------------------------------------------------
  //------------------------
  late InterstitialAd interstitialAduc;
  bool isLoadinguc = false;
  void initAdduc() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/3825717252' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadeduc, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadeduc(InterstitialAd ad) {
    interstitialAduc = ad;
    isLoadinguc = true;
  }
  //-----------------------------------------
  late InterstitialAd interstitialAddort;
  bool isLoadindort = false;
  void initAddort() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/1257633352' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadeddort, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadeddort(InterstitialAd ad) {
    interstitialAddort = ad;
    isLoadindort = true;
  }
//-------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddbes;
  bool isLoadinbes = false;
  void initAddbes() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/4061520975' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedbes, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedbes(InterstitialAd ad) {
    interstitialAddbes = ad;
    isLoadinbes = true;
  }
  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddalti;
  bool isLoadinalti = false;
  void initAddalti() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/8930704274' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedalti, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedalti(InterstitialAd ad) {
    interstitialAddalti = ad;
    isLoadinalti = true;
  }
  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddyedi;
  bool isLoadinyedi = false;
  void initAddyedi() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/4991459264' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedyedi, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedyedi(InterstitialAd ad) {
    interstitialAddyedi = ad;
    isLoadinyedi = true;
  }
  //----------------------------------------------
  //-----------------------------------------
  late InterstitialAd interstitialAddsekiz;
  bool isLoadinsekiz = false;
  void initAddsekiz() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/7426050916' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedsekiz, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedsekiz(InterstitialAd ad) {
    interstitialAddsekiz = ad;
    isLoadinsekiz = true;
  }
  //----------------------------------------------

  //-----------------------------------------
  gecisileriReklamGosterici(){
    if(isLoadinguc){
      switch(ResimIndex){
        case 9:interstitialAduc.show();
        break;
        case 18:interstitialAddort.show();
        break;
        case 27:interstitialAddbes.show();
        break;
        case 36:interstitialAddalti.show();
        break;
        case 45 : interstitialAddyedi.show();
        break;
        case 50: interstitialAddsekiz.show();
        break;
      }
    }
  }
  late InterstitialAd interstitialgeribir;
  bool isLoadingeribir = false;
  void initAddgeribir() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/6025091919' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeribir, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeribir(InterstitialAd ad) {
    interstitialgeribir = ad;
    isLoadingeribir = true;
  }
  //----------------------------------------------
  late InterstitialAd interstitialgeriiki;
  bool isLoadingeriiki = false;
  void initAddgeriiki() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/2085846907' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeriiki, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeriiki(InterstitialAd ad) {
    interstitialgeriiki = ad;
    isLoadingeriiki = true;
  }
  //--------------------------------------
  late InterstitialAd interstitialgeriuc;
  bool isLoadingeriuc = false;
  void initAddgeriuc() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/2906591093' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgeruc, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgeruc(InterstitialAd ad) {
    interstitialgeriuc = ad;
    isLoadingeriuc = true;
  }
  //------------------------
  late InterstitialAd interstitialgeridort;
  bool isLoadingeridort = false;
  void initAddgeridort() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/1105590116' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedgerdort, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedgerdort(InterstitialAd ad) {
    interstitialgeridort = ad;
    isLoadingeridort = true;
  }
  //--------------------------
  gecisGeriReklamGosterici(){
    if(isLoadingeribir){
      switch(ResimIndex){
        case 10 : interstitialgeribir.show();
        break;
        case 20 : interstitialgeriiki.show();
        break;
        case 30 : interstitialgeriuc.show();
        break;
        case  40: interstitialgeridort.show();
        break;
      }
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdduc();
    initAddort();
    initAddbes();
    initAddalti();
    initAddyedi();
    initAddsekiz();
    initAddgeribir();
    initAddgeriiki();
    initAddgeriuc();
    initAddgeridort();
  }
  @override
  Widget build(BuildContext context) {
    var GenislikAyari = MediaQuery.of(context).size.width;
    var YukseklikAyari = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
               image: DecorationImage(
                 image: AssetImage(
                   'images/gifres.webp'
                 ),
                 fit: BoxFit.fill
               )
             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: YukseklikAyari / 1.75,
                    width: GenislikAyari / 1,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        '${Resimler[ResimIndex]}',
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () {
                          setState(() {
                            ResimIndex--;
                            if(ResimIndex==-1){
                              ResimIndex=Resimler.length-1;
                            }
                            gecisGeriReklamGosterici();
                            player.open(Audio('sounds/gerisesi.mp3'));

                          });
                        },
                        icon: Icon(Icons.chevron_left, color: Colors.red, size: 40),
                        label: Text('Geri',
                            style: EkranYaziFontLink
                                .ResimliMesajlarEkraniButonTextStil),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          player.open(Audio("sounds/paylas.mp3"));
                          paylas(BuildContext);
                        },
                        icon: Icon(Icons.share_sharp, color: Colors.red, size: 30),
                        label: Text(
                          'Paylaş',
                          style:
                          EkranYaziFontLink.ResimliMesajlarEkraniButonTextStil,
                        ),
                      ),
                      TextButton.icon(
                        onPressed: () {
                          print('Resim Index => $ResimIndex');
                          if(ResimIndex==Resimler.length-1){
                            ResimIndex=0;
                          }
                          gecisileriReklamGosterici();
                          player.open(Audio("sounds/sess.mp3"));
                          IndexArttir();
                          print('Resim İndex = > $ResimIndex,resim uzunluk =>${Resimler.length}');
                        },
                        icon:
                        Icon(Icons.chevron_right, color: Colors.red, size: 40),
                        label: Text(
                          'İleri',
                          style:
                          EkranYaziFontLink.ResimliMesajlarEkraniButonTextStil,
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: Container(
                      width: GenislikAyari / 1,
                      height: YukseklikAyari / 2.5,
                      decoration: BoxDecoration(color: Colors.transparent),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Resimler.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.all(8.0),
                              child: GestureDetector(
                                onTap: (){
                                  player.open(Audio("sounds/paylas.mp3"));
                                  paylasListWiev(BuildContext, index);
                                },
                                child: Container(
                                  height: YukseklikAyari / 4,
                                  width: GenislikAyari / 2,
                                  decoration: BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network('${Resimler[index]}',
                                        fit: BoxFit.fill),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/*
Row(
            children:  [
              ListView.builder(itemBuilder: (BuildContext context,int index){
                return Container(
                  width: GenislikAyari/3 ,
                  height: YukseklikAyari/3,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                );
              })
            ],
                //<uses-permission android:name="com.google.android.gms.permission.AD_ID"/>
 */
