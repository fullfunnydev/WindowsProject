
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EkranSabitlerim {

  static const Color appbarArkaPlanRengi = Color(0xFFfe003d);
  static const Color scaffoldArkaPlanRengi = Color(0xFF1d4f38);
  static const BorderRadius appbarBorderRadius = BorderRadius.vertical(
      bottom: Radius.circular(30));
  static const BorderRadius homePageBorderRadius=BorderRadius.all(Radius.circular(25));
  static const BorderRadius gridWievBorderRadius=BorderRadius.all(Radius.circular(15));

  static const TextStyle appbarTextStilim=TextStyle(
    color: Colors.green,
    fontSize: 31,
    fontWeight: FontWeight.bold,
    fontFamily: 'textStil',
  );
  static const TextStyle gridWievTextStil= TextStyle(
    color: Colors.tealAccent,
    fontSize: 100,
    fontWeight: FontWeight.bold,
    fontFamily: 'textStil',

  );
  static const TextStyle KelimlerEkraniKelimeTextStil=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.teal,
    fontFamily: 'yaziStilim',
  );
  static const TextStyle KelimlerEkraniKelimeAnlamiTextStil=TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.red,
    fontFamily: 'yaziStilim',
  );


  static const String ResimLenkim='https://icons.iconarchive.com/icons/itzikgur/my-seven/128/Books-1-icon.png';
  static const String ResimLenkim2='https://icons.iconarchive.com/icons/itzikgur/my-seven/512/Books-2-icon.png';
  static const String kelimelerEkraniCircAvatarResim='https://icons.iconarchive.com/icons/designcontest/ecommerce-business/128/research-icon.png';
}