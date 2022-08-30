// ignore_for_file: prefer_const_constructors, unnecessary_brace_in_string_interps, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:gelisimapk/Ekransabitlerim.dart';
import 'package:lottie/lottie.dart';

class AnaSayfaContainer extends StatelessWidget {

 final String yazi_Bir;
 final String? yazi_Iki;
 final String? yazi_Uc;
 //final String AvatarResim;
 final Widget? Child;
 final Function Tiklama_Fonsiyonu;


  AnaSayfaContainer({ required this.Tiklama_Fonsiyonu ,this.Child ,required this.yazi_Bir,this.yazi_Iki,this.yazi_Uc});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Tiklama_Fonsiyonu();
      },
      child: Container(
        child: Column(
          children: [
            Expanded(
                child: CircleAvatar(
                  radius: 85,
                  child: Child,
                  backgroundColor: Colors.transparent,
                )),
            Text('$yazi_Bir',style: EkranSabitlerim.AnaSayfaTextStil,),
            Text('$yazi_Iki',style: EkranSabitlerim.AnaSayfaTextStil,),
            Text('$yazi_Uc',style: EkranSabitlerim.AnaSayfaTextStil,),
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}