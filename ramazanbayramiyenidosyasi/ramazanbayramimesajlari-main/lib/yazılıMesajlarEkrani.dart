// ignore_for_file: prefer_const_constructors

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:ramazanbayramimesajlari/verilerDart.dart';
import 'package:share_plus/share_plus.dart';

import 'EkranAyarlari.dart';

class yaziliMesajlarEkrani extends StatefulWidget {
  @override
  State<yaziliMesajlarEkrani> createState() => _yaziliMesajlarEkraniState();
}

class _yaziliMesajlarEkraniState extends State<yaziliMesajlarEkrani> {
  AssetsAudioPlayer player = AssetsAudioPlayer();

  //------------------------
  late InterstitialAd interstitialAd;

  bool isLoading = false;

  void initAdd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/1933556248', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded(InterstitialAd ad) {
    interstitialAd = ad;
    isLoading = true;
  }

  //----------------------------------------------------
  late InterstitialAd interstitialAdiki;
  bool isLoadingiki = false;

  void initAddiki() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/4417578340', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadediki, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadediki(InterstitialAd ad) {
    interstitialAdiki = ad;
    isLoadingiki = true;
  }
//---------------------------------------------
  late InterstitialAd interstitialAdikiii;
  bool isLoadingikiii = false;

  void initAddikiii() {
    InterstitialAd.load(
        adUnitId:'ca-app-pub-3853518386312922/1312122607', //
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoadedikiii, onAdFailedToLoad: (error) {}));
  }

  void onAdLoadedikiii(InterstitialAd ad) {
    interstitialAdikiii = ad;
    isLoadingikiii = true;
  }
  //----------------------------------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdd();
    initAddiki();
    initAddikiii();
  }

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/zemin.jpeg'), fit: BoxFit.fill),
            color: Colors.transparent,
          ),
          child: AnimationLimiter(
            child: ListView.builder(
              padding: EdgeInsets.all(_w / 30),
              physics: BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              itemCount: MesajlariListele.length,
              itemBuilder: (BuildContext context, int index) {
                Future yaziyiPaylas(BuildContext) async {
                  var mesaj = MesajlariListele[index].kisaMesaj.toString();
                  await Share.share(mesaj);
                }

                if (isLoading) {
                  switch (index) {
                    case 10:
                      interstitialAd.show();
                      break;
                    case 24:
                      interstitialAdiki.show();
                      break;
                    case 30: interstitialAdikiii.show();
                    break;
                  }
                }

                return AnimationConfiguration.staggeredList(
                  position: index,
                  delay: Duration(milliseconds: 100),
                  child: SlideAnimation(
                    duration: Duration(milliseconds: 2500),
                    curve: Curves.elasticIn,
                    verticalOffset: -250,
                    child: ScaleAnimation(
                        duration: Duration(milliseconds: 1500),
                        curve: Curves.elasticInOut,
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: BlurryContainer(
                            height: _w / 1.80,
                            width: _w / 4,
                            bgColor: Colors.black,
                            blur: 2,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '${MesajlariListele[index].kisaMesaj}',
                                  style: EkranYaziFontLink
                                      .YaziliMesajlarEkraniYaziStilFont,
                                ),
                                Expanded(
                                  child: TextButton.icon(
                                    onPressed: () {
                                      player.open(Audio("sounds/paylas.mp3"));
                                      yaziyiPaylas(BuildContext);
                                    },
                                    icon: Icon(Icons.mobile_screen_share,
                                        color: Colors.red, size: 30),
                                    label: Text(
                                      'Paylaş',
                                      style: EkranYaziFontLink
                                          .YaziliEkranMesajlariButonTextStil,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
