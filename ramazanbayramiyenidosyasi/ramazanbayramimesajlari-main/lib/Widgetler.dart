// ignore_for_file: unnecessary_string_interpolations

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ramazanbayramimesajlari/EkranAyarlari.dart';

class AnaEkranContainer extends StatelessWidget {
  String MenuYazisi;
  //Function tiklatmaFonskiyonu;

  AnaEkranContainer({
    Key? key,
    //required this.tiklatmaFonskiyonu,
    required this.MenuYazisi,
    required this.GenislikAyari,
    required this.YukseklikAyari,
  }) : super(key: key);

  final double GenislikAyari;
  final double YukseklikAyari;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: BlurryContainer(
        height: GenislikAyari / 2.8,
        width: YukseklikAyari / 2.2,
        bgColor: Colors.black12,
        blur: 1,
        borderRadius: BorderRadius.circular(20),
        child: Column(
          children: [
            Text(
              '$MenuYazisi',
              style: EkranYaziFontLink.AnaEkranYaziFont,
            ),
            CircleAvatar(
              child: Image.asset('images/ileri.png'),
              radius: 35,
              backgroundColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
