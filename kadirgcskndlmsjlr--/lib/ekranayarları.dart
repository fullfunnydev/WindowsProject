
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
class EkranAyarlari{
  static final TextStyle YaziStilim=GoogleFonts.righteous(
    color: Colors.white,
    fontSize: 28,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle ileriGeriFonts=GoogleFonts.righteous(
    color: Colors.purple,
    fontSize: 26,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle AnaEkranYaziFonts=GoogleFonts.oswald(
    //color: Color(0xFF009900),
    color: Colors.yellow,
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  static final TextStyle MesajEkraniYaziFont=GoogleFonts.oswald(
    //color: Color(0xFF009900),
    color: Colors.green,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
static const String LottieResimliMesajLink='https://assets2.lottiefiles.com/packages/lf20_hcew66e3.json';
static const String LottieKisaSmsMesajLink='https://assets6.lottiefiles.com/packages/lf20_wklhneyh.json';
}