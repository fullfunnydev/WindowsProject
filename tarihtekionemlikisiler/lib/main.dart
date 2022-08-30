// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_string_interpolations
import 'package:flutter/cupertino.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:tarihtekionemlikisiler/EkranSabitlerim.dart';
import 'package:tarihtekionemlikisiler/bilgilerEkrani.dart';
import 'package:tarihtekionemlikisiler/datadart.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.deepOrange,
          appBar: AppBar(
            backgroundColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: EkranSabitleri.AnaSAyfaAppBarBorderRadius,
            ),
            title: Text(''),
            bottom: PreferredSize(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 70,
                    child:  Lottie.network('https://assets4.lottiefiles.com/packages/lf20_wzaxxisv.json',

                    ) ,
                  )
                ],
              ),
              preferredSize: Size.fromHeight(100),
            ),
          ),
          body: AnaSayfam(),
        ),
      ),
    );
  }
}

class AnaSayfam extends StatelessWidget {
  const AnaSayfam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    return  AnimationLimiter(
      child: ListView.builder(
        padding: EdgeInsets.all(_w / 30),
        physics:
        BouncingScrollPhysics(parent: const AlwaysScrollableScrollPhysics()),
        itemCount: BilgileriYErlestir.length,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            delay: Duration(milliseconds: 100),
            child: SlideAnimation(
              duration: Duration(milliseconds: 2500),
              curve: Curves.elasticIn,
              verticalOffset: -250,
              child: ScaleAnimation(
                duration: Duration(milliseconds: 3000),
                curve: Curves.elasticInOut,
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (context,a,b)=>BilgileriGosterEkrani(
                          onemliKisilerVeHayatlari: BilgileriYErlestir[index],
                        ))
                    );
                  },
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text('${BilgileriYErlestir[index].adi.toString()}',style:EkranSabitleri.AnaSayfaTextStil),
                              Text('${BilgileriYErlestir[index].meslek}',style: EkranSabitleri.OnemliKisiMeslek),
                             Container(

                               child: Expanded(
                                   child: ClipRRect(
                                     clipBehavior: Clip.antiAlias,
                                     borderRadius: BorderRadius.circular(15),
                                     child: Image.network('${BilgileriYErlestir[index].Resim}'
                                       ,fit: BoxFit.fill,),
                                   )),
                             )
                            ],
                          ),
                        ),
                      ],
                    ),
                    margin: EdgeInsets.only(bottom: _w / 23),
                    height: _w / 1.1,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}






/*
class Sayfam extends StatefulWidget {
  const Sayfam({Key? key}) : super(key: key);

  @override
  State<Sayfam> createState() => _SayfamState();
}

class _SayfamState extends State<Sayfam> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
              itemCount: plakaSehirGosterici.length,
              itemBuilder: (BuildContext context, int index){
            return Padding(
              padding: const EdgeInsets.all(6.0),
              child: ListTile(
                onTap: (){
                  Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (context,a,b)=>Bilgiler(
                    bilgileriGetir: plakaSehirGosterici[index],
                  ))
                  );
                },
                leading: CircleAvatar(),
                title: Text(plakaSehirGosterici[index].plakaKodu.toString()),
                tileColor: Colors.red,
              style: ListTileStyle.list
              ),
            );
          }),
        )
    ],
    );
  }
}

 */
