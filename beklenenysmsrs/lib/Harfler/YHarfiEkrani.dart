
import 'package:beklenenysmsrs/data.dart';
import 'package:beklenenysmsrs/ekranSabitleri.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class YHarfiEkrani extends StatefulWidget {

  @override
  State<YHarfiEkrani> createState() => _YHarfiEkraniState();
}

class _YHarfiEkraniState extends State<YHarfiEkrani> {
  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    AharfiKelimeVeAnlami aharfikelimeleri=AharfiKelimeVeAnlami();
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff222d68),
        appBar: AppBar(
          shape: RoundedRectangleBorder(
            borderRadius: EkranSabitlerim.appbarBorderRadius,
          ),
          backgroundColor: EkranSabitlerim.appbarArkaPlanRengi,
          bottom: PreferredSize(
            child: Column(
              children: [
                Text('J',style: TextStyle(
                    color: Colors.green,fontSize: 35
                ),)
              ],
            ),
            preferredSize: Size.fromHeight(30),
          ),
          title: Text("Menüye Dön"),
          centerTitle: true,
        ),
        body: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: YHarfiKelimeVeAnlami().y_harfi_kelime_ve_Anlami.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.elasticIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 1000),
                    curve: Curves.elasticInOut,
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.transparent,
                              child: Image.network(EkranSabitlerim.kelimelerEkraniCircAvatarResim),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                Text(YHarfiKelimeVeAnlami().y_harfi_kelime_ve_Anlami[index].kelime,
                                  style: EkranSabitlerim.KelimlerEkraniKelimeTextStil,

                                ),
                                Text('',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10)),
                                Expanded(

                                  child: Text(YHarfiKelimeVeAnlami().y_harfi_kelime_ve_Anlami[index].KelimeAnlami,
                                    style: EkranSabitlerim.KelimlerEkraniKelimeAnlamiTextStil,
                                  ),
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
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 40,
                            spreadRadius: 10,
                          ),
                        ],
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
