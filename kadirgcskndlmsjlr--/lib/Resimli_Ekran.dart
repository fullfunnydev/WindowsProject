// ignore_for_file: prefer_const_constructors

import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kandilmesaji/ekranayarlar%C4%B1.dart';
import 'package:kandilmesaji/veriler.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:google_mobile_ads/google_mobile_ads.dart';

class ResimliEkran extends StatefulWidget {
  ResimliEkran({Key? key}) : super(key: key);

  @override
  State<ResimliEkran> createState() => _ResimliEkranState();
}

class _ResimliEkranState extends State<ResimliEkran> {
  var ResimIndex = 0;
  indexArttir() {
    setState(() {
      ResimIndex++;
    });
  }

  indexAzalt() {
    setState(() {
      ResimIndex--;
    });
  }

  Future paylas(BuildContext) async {
    final resimUrl = Resimlerim[ResimIndex];
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

  Future paylas2(BuildContext, int resIndex) async {
    final resimUrl = Resimlerim[resIndex];
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
//----------------------------------------------------------------
  late InterstitialAd interstitialAd;
  bool isLoading = false;
  void initAdd() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3853518386312922/5846130531' ,//
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded(InterstitialAd ad) {
    interstitialAd = ad;
    isLoading = true;
  }

//---------------------------------------------------------------------------------
  late InterstitialAd interstitialAd3;
  bool isLoading3 = false;
  void initAdd3() {
    InterstitialAd.load(
        adUnitId: 'ca-app-pub-3940256099942544/1033173712',
        request: AdRequest(),
        adLoadCallback: InterstitialAdLoadCallback(
            onAdLoaded: onAdLoaded3, onAdFailedToLoad: (error) {}));
  }

  void onAdLoaded3(InterstitialAd ad) {
    interstitialAd = ad;
    isLoading3 = true;
  }

  //--------------------------------------------------------------------
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initAdd();



  }


  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var heg = MediaQuery.of(context).size.height;
    var sayi = 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'images/maainn.gif'),
                    fit: BoxFit.fitHeight)),
            child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(''),
                    Container(
                      width: wid / 1.1,
                      height: heg / 2.1,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      child: AspectRatio(
                        aspectRatio: 12,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.network(
                            '${Resimlerim[ResimIndex]}',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Text(''),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ilerigeriContainer(
                            tiklamaFonksuyonu: () {
                              indexAzalt();
                              if (ResimIndex == -1) {
                                ResimIndex=0;
                              }
                              if(isLoading){
                                interstitialAd.show();
                              }
                              if (isLoading) {
                                switch(ResimIndex){
                                  case 5 : interstitialAd.show();
                                  break;
                                  case 15:interstitialAd.show();
                                  break;
                                  case 25: interstitialAd.show();
                                  break;
                                  case 35:interstitialAd.show();
                                  break;
                                  case 45: interstitialAd.show();
                                  break;
                                  case 55: interstitialAd.show();
                                  break;
                                  case 65 : interstitialAd.show();
                                  break;
                                  case 75 : interstitialAd.show();
                                  break;
                                }
                              }
                            },
                            yazi: 'Geri',
                            wid: wid,
                            heg: heg),
                        ilerigeriContainer(
                            tiklamaFonksuyonu: () {
                              paylas(BuildContext);
                            },
                            yazi: 'Paylaş',
                            wid: wid,
                            heg: heg),
                        ilerigeriContainer(
                            tiklamaFonksuyonu: () {
                              indexArttir();
                              if (ResimIndex == Resimlerim.length) {
                                ResimIndex = 0;
                              }
                              if(isLoading){
                                switch (ResimIndex){
                                  case 6: interstitialAd.show();
                                  break;
                                  case 12 : interstitialAd.show();
                                  break;
                                  case 18: interstitialAd.show();
                                  break;
                                  case 24 :interstitialAd.show();
                                  break;
                                  case 30: interstitialAd.show();
                                  break;
                                  case 42: interstitialAd.show();
                                  break;
                                  case 52: interstitialAd.show();
                                  break;
                                  case 62: interstitialAd.show();
                                  break;
                                  case 72:interstitialAd.show();
                                  break;
                                }
                              }


                              print('-' * 10);
                              print('$ResimIndex');
                            },
                            yazi: 'İleri',
                            wid: wid,
                            heg: heg)
                      ],
                    ),
                    Text(''),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            width: wid / 1,
                            height: heg / 3.5,
                            color: Colors.transparent,
                            child: ListView.builder(
                              padding: EdgeInsets.all(8),
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (contex, index) {
                                return Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: GestureDetector(
                                      onTap: () {
                                        paylas2(BuildContext,index);
                                      },
                                      child: Container(
                                        width: wid / 1.8,
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(19)),
                                        child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(19),
                                            child: Image.network(
                                              '${Resimlerim[index]}',
                                              fit: BoxFit.fill,
                                            )),
                                      ),
                                    ));
                              },
                              itemCount: Resimlerim.length,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ilerigeriContainer extends StatelessWidget {
  String? yazi;
  Function tiklamaFonksuyonu;
  ilerigeriContainer({
    Key? key,
    required this.tiklamaFonksuyonu,
    required this.yazi,
    required this.wid,
    required this.heg,
  }) : super(key: key);

  final double wid;
  final double heg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        tiklamaFonksuyonu();
      },
      child: Container(
        width: wid / 4,
        height: heg / 12,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(50)),
        child: Center(
            child: Text(
          '$yazi',
          style: EkranAyarlari.ileriGeriFonts,
        )),
      ),
    );
  }
}

/*
GestureDetector(
                      onTap: (){
                        setState(() {
                          ResimIndex--;
                          print(ResimIndex);
                        });
                      },
                      child: CircleAvatar(
                        radius: 30,
                        child: Image.network(
                            'https://icons.iconarchive.com/icons/hopstarter/button/128/Button-Previous-icon.png'),
                      ),
                    ),
                    CircleAvatar(
                      radius: 35,
                    ),
                    GestureDetector(
                      onTap: (){
                        ResimIndex++;
                        sayi++;
                        setState(() {

                          print('$sayi');
                        });
                      },
                      child: CircleAvatar(
                        radius: 30,
                        child: Image.network(
                            'https://icons.iconarchive.com/icons/hopstarter/button/128/Button-Next-icon.png',
                            fit: BoxFit.contain),
                      ),
                    ),
 */

/*
ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                        '${Resimlerim[ResimIndex].toString()}',
                     fit: BoxFit.fill,

                    ),
                  ),
 */
