// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(Uygulamam());
}

class Uygulamam extends StatelessWidget {
  const Uygulamam({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(

        child: Scaffold(
          body: AnaEkran(),
        ),
      ),
    );
  }
}

class AnaEkran extends StatelessWidget {
  AnaEkran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var heg = MediaQuery.of(context).size.height;
    return Container(
      width: double.infinity,
      height: heg / 1,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                'https://i.pinimg.com/736x/36/4d/46/364d4642f4ab9cd400d5c430535263fd.jpg',
              ),
              fit: BoxFit.fitHeight)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CircleAvatar(
            child: Lottie.network('https://assets4.lottiefiles.com/packages/lf20_lhh2mjhe.json'),
            backgroundColor: Colors.transparent,
            maxRadius: 80,
          ),
          containerAnaEkran(wid: wid,
              heg: heg,

          resimLink: 'https://i4.hurimg.com/i/hurriyet/75/0x0/6230fb1b7152d835a430c7bf.jpg',
          ),
          containerAnaEkran(resimLink: 'https://i2.milimaj.com/i/milliyet/75/750x0/5ec264b15542801a5ccbea18.jpg',
              wid: wid, heg: heg,

          )
        ],
      ),
    );
  }
}

class containerAnaEkran extends StatelessWidget {

  String resimLink;

   containerAnaEkran({
    Key? key,
   required this.resimLink,
    required this.wid,
    required this.heg,
  }) : super(key: key);

  final double wid;
  final double heg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print('Gesture Çalışıyor');
      },
      child: Column(
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                  '$resimLink',

              ),
            ),
            width: wid / 1.2,
            height: heg / 4,
          ),

        ],
      ),
    );
  }
}
