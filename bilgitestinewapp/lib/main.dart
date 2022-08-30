// ignore_for_file: prefer_const_constructors

import 'package:bilgitestinewapp/constr.dart';
import 'package:bilgitestinewapp/test_veri.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bilgitestinewapp/soru.dart';

void main() => runApp(BilgiTesti());

class BilgiTesti extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue.shade900,
              // ignore: prefer_const_constructors
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30)),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(80),
                child: Column(
                  children: [
                    Container(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Colors.transparent,
                        child: Image.network(resimLinkim),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            backgroundColor: Colors.indigo[700],
            body: SafeArea(
                child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: SoruSayfasi(),
            ))));
  }
}

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  TestVeri test_1=TestVeri();


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test_1.getSoruMetni(),
                ///soruBanksi[soruIndex].soruMetni,

                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: 'yaziStil',
                  fontSize: 30.0,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          /// Merkez Çizmeye Başlar
          alignment: WrapAlignment.center,

          /// yanyana boşluk bırakır
          spacing: 5,

          /// yukarıdan Aşağıya boşluk bırakır
          runSpacing: 5,

          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          // ignore: prefer_const_constructors
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {

                            setState(() {
                              test_1.getSoruCevabi() == false
                                  ? secimler.add(kDogruIkon)
                                  : secimler.add(kYanlisIkon);
                              //secimler.add(kYanlisIkon);
                            });
                            test_1.IndexArttir();
                            if(test_1.soruIndex==0){
                              secimler.clear();
                            }
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                             test_1.getSoruCevabi() == true
                                  ? secimler.add(kDogruIkon)
                                  : secimler.add(kYanlisIkon);
                            });
                            test_1.IndexArttir();
                            if(test_1.soruIndex==0){
                              secimler.clear();
                            }
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

