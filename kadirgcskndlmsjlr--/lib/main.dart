// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:kandilmesaji/Resimli_Ekran.dart';
import 'package:kandilmesaji/ekranayarlar%C4%B1.dart';
import 'package:kandilmesaji/veriler.dart';
import 'package:kandilmesaji/yeniekranim.dart';
import 'package:lottie/lottie.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(MaterialApp(
    home: KandilMesajUygulamamm(),
    debugShowCheckedModeBanner: false,
  ));
}

class KandilMesajUygulamamm extends StatefulWidget {
   KandilMesajUygulamamm({Key? key}) : super(key: key);

  @override
  State<KandilMesajUygulamamm> createState() => _KandilMesajUygulamammState();
}

class _KandilMesajUygulamammState extends State<KandilMesajUygulamamm> {

   late InterstitialAd interstitialAd;
    bool isLoading=false;

   void initAdd() {
     InterstitialAd.load(
         adUnitId:'ca-app-pub-3853518386312922/5544724111',
         request: AdRequest(),
         adLoadCallback: InterstitialAdLoadCallback(
             onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
   }

   void onAdLoaded(InterstitialAd ad) {
     interstitialAd=ad;
     isLoading=true;
   }

   //-----------------------------------------------
   late InterstitialAd interstitialAd2;

   bool isLoading2=false;

   void initAdd2() {
     InterstitialAd.load(
         adUnitId:'ca-app-pub-3853518386312922/4916192246',
         request: AdRequest(),
         adLoadCallback: InterstitialAdLoadCallback(
             onAdLoaded: onAdLoaded2, onAdFailedToLoad: (error) {}));
   }

   void onAdLoaded2(InterstitialAd ad) {
     interstitialAd2=ad;
     isLoading2=true;
   }

//-------------------------------------------------------------------------------

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdd();
    initAdd2();
  }

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var heg = MediaQuery.of(context).size.height;
    int sayi = 0;

    return SafeArea(

      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage(//
                    'images/main.gif'),
        //https://cokiyiabi.com/wp-content/uploads/2016/07/kadir-gecesi-gif-mesaj.gif
                fit: BoxFit.fill,
              )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              anaEkranWidget(
                heg: heg,
                wid: wid,
                MesajTuru: 'RESİMLİ KANDİL MESAJLARI',
                TiklamaFonksiyonu: (){



                    if(isLoading){
                      interstitialAd.show();
                    }
                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (context,a,b)=>ResimliEkran(
                        ))
                    );


                },
              ),
              anaEkranWidget(MesajTuru: 'YAZILI KANDİL MESAJLARI',
                  TiklamaFonksiyonu: (){
                            if(isLoading2){
                              interstitialAd2.show();
                            }

                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (context,a,b)=>yaziliEkranim(
                        ))
                    );

                  },
                  heg: heg, wid: wid),
              Text(''),
            ],
          ),
        ),
      ),
    );
  }
}

class anaEkranWidget extends StatelessWidget {
  String? MesajTuru;
  Function TiklamaFonksiyonu;
  anaEkranWidget({
    Key? key,
    required this.MesajTuru,
    required this.TiklamaFonksiyonu,
    required this.heg,
    required this.wid,
  }) : super(key: key);

  final double heg;
  final double wid;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        TiklamaFonksiyonu();
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BlurryContainer(
          borderRadius: BorderRadius.circular(20),
          bgColor: Colors.purple,
          height: heg /8,
          width: wid/1,
          blur: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '$MesajTuru',
                style: EkranAyarlari.AnaEkranYaziFonts,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: 15,
                child: Image.network(
                    'https://icons.iconarchive.com/icons/hopstarter/soft-scraps/256/Button-Next-icon.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
