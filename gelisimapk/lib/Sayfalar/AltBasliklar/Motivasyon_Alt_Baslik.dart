import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:gelisimapk/Data/Ki%C5%9Fisel_Geli%C5%9Fim_Sayfasi_Listesi.dart';
import 'package:gelisimapk/Ekransabitlerim.dart';
import 'package:lottie/lottie.dart';

class Motivasyon_Alt_Baslik extends StatefulWidget {
  @override
  State<Motivasyon_Alt_Baslik> createState() => _Motivasyon_Alt_BaslikState();
}

class _Motivasyon_Alt_BaslikState extends State<Motivasyon_Alt_Baslik> {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;

    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.purple,
        appBar: AppBar(
          shape: const RoundedRectangleBorder(
            borderRadius: EkranSabitlerim.appbarBorderRadius,
          ),
          backgroundColor:Colors.transparent,
          bottom: PreferredSize(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: Lottie.network(
                      EkranSabitlerim.AltBasliklarAppBarJson),
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
            BouncingScrollPhysics(parent: const AlwaysScrollableScrollPhysics()),
            itemCount: Kisiel_gelisim_ekrani_alt_baslik().Motivasyon.length,
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
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                                radius: 49,
                                backgroundColor: Colors.transparent,
                                child: Lottie.network(EkranSabitlerim
                                    .IngilizceOgrenmeAltBaslikJson)),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Kisiel_gelisim_ekrani_alt_baslik()
                                      .Motivasyon[index]
                                      .altBasligi
                                      .toString(),
                                  style: EkranSabitlerim
                                      .KisiselGelisimEkraniAltBasliklariTextStil,
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
              );
            },
          ),
        ),
      ),
    );
  }
}
