import 'package:flutter/material.dart';
import 'package:learngenglish/mainres.dart';

class FonksiyoneliteClass {
  SesDosyalari sesDosyalariClass = SesDosyalari();
  gelenIndexeGoreResimleriGoster(int gelenIndex, int gosterilecekResimIndexi) {
    switch (gelenIndex) {
      case 0:
        return numbersSection[gosterilecekResimIndexi];
      case 1:
        return fruitSection[gosterilecekResimIndexi];
      case 2:
        return animalsSection[gosterilecekResimIndexi];
      case 3:
        return alphabetSection[gosterilecekResimIndexi];
      case 4:
        return comHelpsSection[gosterilecekResimIndexi];
      case 5:
        return vegatablesSection[gosterilecekResimIndexi];
      case 6:
        return vehicleSections[gosterilecekResimIndexi];
      case 7:
        return shapeSection[gosterilecekResimIndexi];
      case 8:
        return colorsSection[gosterilecekResimIndexi];
      case 9:
        return daysSections[gosterilecekResimIndexi];
      case 10:
        return mountsSections[gosterilecekResimIndexi];
      case 11:
        return bodyPartSection[gosterilecekResimIndexi];
    }
  }

  gelenIndexeGoreArkaPlanResminiDegistir(int GelenIndex) {
    switch (GelenIndex) {
      case 0:
        return "hayvanlar/mainscreen.jpg";
      case 1:
        return "images/resimbir.jpg";
      case 2:
        return "images/resimiki.jpg";
      case 3:
        return "images/resimuc.jpg";
      case 4:
        return "images/resimdort.jpg";
      case 5:
        return "images/resimbes.jpg";
      case 6:
        return "images/resimalti.jpg";
      case 7:
        return "images/resimyedi.jpg";
      case 8:
        return "images/resimsekiz.jpg";
      case 9:
        return "images/resimdokuz.jpg";
      case 10:
        return "images/resimon.jpg";
      case 11:
        return "images/resimonbir.jpg";
    }
  }

  sectionsSoundsPlay(int KontrolIdexi, int resimIndexi) {
    switch (KontrolIdexi) {
      case 0:
        return sesDosyalariClass.sayilarSesleriniOynat(resimIndexi);
      case 1:
        return sesDosyalariClass.meyveSesleriniOynat(resimIndexi);
      case 2:
        return sesDosyalariClass.hayvanlarinSesleriniOynat(resimIndexi);
      case 3:
        return sesDosyalariClass.alfabeSesleriniOynat(resimIndexi);
      case 4:
        return sesDosyalariClass.comHelpSesleriniOynat(resimIndexi);
      case 5:
        return sesDosyalariClass.sebzeSesleriniOynat(resimIndexi);
      case 6:
        return sesDosyalariClass.araclarSesleriniOynat(resimIndexi);
      case 7:
        return sesDosyalariClass.sekillerSesleriniOynat(resimIndexi);
      case 8:
        return sesDosyalariClass.renklerSesleriniOynat(resimIndexi);
      case 9:
        return sesDosyalariClass.gunlerinSesleriniOynat(resimIndexi);
      case 10:
        return sesDosyalariClass.aylariSesleriniOynat(resimIndexi);
      case 11:
        return sesDosyalariClass.bodyPartSesleriniOynat(resimIndexi);
    }
  }
}
