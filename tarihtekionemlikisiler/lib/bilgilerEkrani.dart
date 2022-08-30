

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tarihtekionemlikisiler/EkranSabitlerim.dart';
import 'package:tarihtekionemlikisiler/datadart.dart';
import 'package:lottie/lottie.dart';

class BilgileriGosterEkrani extends StatefulWidget {
  OnemliKisilerVeHayatlari onemliKisilerVeHayatlari;

  BilgileriGosterEkrani({ required this.onemliKisilerVeHayatlari, Key? key})
      : super(key: key);

  @override
  State<BilgileriGosterEkrani> createState() => _BilgileriGosterEkraniState();
}

class _BilgileriGosterEkraniState extends State<BilgileriGosterEkrani> {



  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.black,
      appBar:  AppBar(
        backgroundColor: Colors.transparent,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_4rq0nvpt.json'),
                radius: 48,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network('https://icons.iconarchive.com/icons/robinweatherall/library/256/books-icon.png'),
                radius: 44,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Image.network('https://icons.iconarchive.com/icons/itzikgur/my-seven/256/Books-2-icon.png'),
                radius: 44,
              ),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                child: Lottie.network('https://assets3.lottiefiles.com/packages/lf20_thcjohxh.json'),
                radius: 48,
              ),
            ],
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(35))
        ),
      ),
      body: SafeArea(child: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('${widget.onemliKisilerVeHayatlari.Hayati}',
                  style: EkranSabitleri.BilgigostericiSayfaTextStil),
            ),
          ],
        ),
      )),
    );
  }
}