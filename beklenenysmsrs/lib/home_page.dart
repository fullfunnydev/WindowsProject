// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:beklenenysmsrs/Harfler/%C3%B6HarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/BHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/CHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/DHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/EHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/FHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/GHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/HHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/IHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/JHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/KHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/LHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/MHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/NHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/OHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/PHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/RHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/SHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/SSSHarfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/UUUHArfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/UnlemEkrani.dart';
import 'package:beklenenysmsrs/Harfler/ZHArfiEkrani.dart';
import 'package:beklenenysmsrs/Harfler/ccHariEkrani.dart';
import 'package:beklenenysmsrs/Harfler/iekrani.dart';
import 'package:beklenenysmsrs/Harfler/soruIsaretEkrani.dart';
import 'package:beklenenysmsrs/data.dart';
import 'package:beklenenysmsrs/ekranSabitleri.dart';
import 'package:beklenenysmsrs/Harfler/ikiniSayfa.dart';
import 'package:flutter/material.dart';
import 'Harfler/THarfiEkrani.dart';
import 'Harfler/UHarfiEkrani.dart';
import 'Harfler/VHarfiEkrani.dart';
import 'Harfler/YHarfiEkrani.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    AharfiKelimeVeAnlami A_Harfi = AharfiKelimeVeAnlami();
    var ekranGenisligi = MediaQuery.of(context).size.width;
    var ekranYuksekligi = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.all(4),
      width: ekranGenisligi / 1.02,
      height: ekranYuksekligi / 1.31,
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: EkranSabitlerim.homePageBorderRadius,
      ),
      child: GridView.count(
        crossAxisCount: 3,
        primary: false,
        padding: EdgeInsets.all(6),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>AHarfiEkrani()));
            },
              child: harfWidget(harf: 'A' )),
          GestureDetector(
            onTap: (){

              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>BHarfiEkrani()));
            },
              child: harfWidget(harf: 'B')),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>CHarfiEkrani()));
            },
              child: harfWidget(harf: 'C')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ccHarfiEkrani()));
              },
              child: harfWidget(harf: 'Ç')),
          GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>DHarfiEkrani()));
            },
              child: harfWidget(harf: 'D')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>EHarfiEkrani()));
              },
              child: harfWidget(harf: 'E')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>FHarfiEkrani()));
              },
              child: harfWidget(harf: 'F')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>GHarfiEkrani()));
              },
              child: harfWidget(harf: 'G')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>HarfiEkrani()));
              },
              child: harfWidget(harf: 'H')),
          /////////////////////////////
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>IHarfiEkrani()));
              },
              child: harfWidget(harf: 'I')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>iHarfiEkrani()));
              },
              child: harfWidget(harf: 'i')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>JHarfiEkrani()));
              },
              child: harfWidget(harf: 'J')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>KHarfiEkrani()));
              },
              child: harfWidget(harf: 'K')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>LHarfiEkrani()));
              },
              child: harfWidget(harf: 'L')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>MHarfiEkrani()));
              },
              child: harfWidget(harf: 'M')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>NHarfiEkrani()));
              },
              child: harfWidget(harf: 'N')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>OHarfiEkrani()));
              },
              child: harfWidget(harf: 'O')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>OOOOHarfiEkrani()));
              },
              child: harfWidget(harf: 'ö')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>PHarfiEkrani()));
              },
              child: harfWidget(harf: 'P')),
          ///////////
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>RHarfiEkrani()));
              },
              child: harfWidget(harf: 'R')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SHarfiEkrani()));
              },
              child: harfWidget(harf: 'S')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SSSHarfiEkrani()));
              },
              child: harfWidget(harf: 'Ş')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>THarfiEkrani()));
              },
              child: harfWidget(harf: 'T')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>UHarfiEkrani()));
              },
              child: harfWidget(harf: 'U')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>UUUHarfiEkrani()));
              },
              child: harfWidget(harf: 'ü')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>VHarfiEkrani()));
              },
              child: harfWidget(harf: 'V')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>YHarfiEkrani()));
              },
              child: harfWidget(harf: 'Y')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>ZHarfiEkrani()));
              },
              child: harfWidget(harf: 'Z')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>UnlemHarfiEkrani()));
              },
              child: harfWidget(harf: '!')),
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>SoruIsaretEkrani()));
              },
              child: harfWidget(harf: '?')),
        ],
      ),
    );
  }
}

class harfWidget extends StatefulWidget {
  var child;
  String harf;
  harfWidget({this.child, required this.harf,});

  @override
  State<harfWidget> createState() => _harfWidgetState();
}

class _harfWidgetState extends State<harfWidget> {
  AharfiKelimeVeAnlami a_Harfiicin = AharfiKelimeVeAnlami();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          '${widget.harf}',
          style: EkranSabitlerim.gridWievTextStil,
          textAlign: TextAlign.center,
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: EkranSabitlerim.gridWievBorderRadius,
      ),
    );
  }
}

/*
Navigator.push(context,
            MaterialPageRoute(builder: (context)=>AHarfiEkrani()));
 */
