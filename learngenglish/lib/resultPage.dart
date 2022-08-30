// ignore_for_file: unnecessary_string_interpolations, sort_child_properties_last, prefer_interpolation_to_compose_strings, void_checks

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learngenglish/FontRenkLink.dart';
import 'package:learngenglish/butonType.dart';
import 'fonksiyonlarim.dart';
import 'mainres.dart';

class resultPage extends StatefulWidget {
  int mainPagedenGelenIndex;
  resultPage({Key? key, required this.mainPagedenGelenIndex}) : super(key: key);

  @override
  State<resultPage> createState() => _resultPageState();
}

class _resultPageState extends State<resultPage> {
  int resimIndexi = 0;

  indexArtis() {
    setState(() {
      resimIndexi++;
    });
  }

  indexAzalis() {
    setState(() {
      resimIndexi--;
    });
  }

  FonksiyoneliteClass kullandigimFonksiyonlar = FonksiyoneliteClass();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration:  BoxDecoration(
            image: DecorationImage(
                image: AssetImage("${kullandigimFonksiyonlar.gelenIndexeGoreArkaPlanResminiDegistir(widget.mainPagedenGelenIndex)}"),
                fit: BoxFit.fill),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  margin: EdgeInsets.all(40),
                  width: double.infinity,
                  height: 250.sp,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                              "${kullandigimFonksiyonlar.gelenIndexeGoreResimleriGoster(widget.mainPagedenGelenIndex, resimIndexi)}"),
                          fit: BoxFit.fill),
                      color: Colors.teal.withOpacity(0.8),
                      borderRadius:
                          EkranyaziFontRenkLink.borderRadiusDegeriMenu),
                ),
              ),
              Row(
                children: [
                  Buton(
                    tiklamaButonu: () {
                      indexAzalis();
                      if (widget.mainPagedenGelenIndex == 0) {
                        if (resimIndexi == -1) {
                          resimIndexi = numbersSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 1) {
                        if (resimIndexi == -1) {
                          resimIndexi = fruitSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 2) {
                        if (resimIndexi == -1) {
                          resimIndexi = animalsSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 3) {
                        if (resimIndexi == -1) {
                          resimIndexi = alphabetSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 4) {
                        if (resimIndexi == -1) {
                          resimIndexi = comHelpsSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 5) {
                        if (resimIndexi == -1) {
                          resimIndexi = vegatablesSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 6) {
                        if (resimIndexi == -1) {
                          resimIndexi = vehicleSections.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 7) {
                        if (resimIndexi == -1) {
                          resimIndexi = shapeSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 8) {
                        if (resimIndexi == -1) {
                          resimIndexi = colorsSection.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 9) {
                        if (resimIndexi == -1) {
                          resimIndexi = daysSections.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 10) {
                        if (resimIndexi == -1) {
                          resimIndexi = mountsSections.length - 1;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 11) {
                        if (resimIndexi == -1) {
                          resimIndexi = bodyPartSection.length - 1;
                        }
                      }
                      kullandigimFonksiyonlar.sectionsSoundsPlay(
                          widget.mainPagedenGelenIndex, resimIndexi);
                    },
                    resimLink: "images/prev.png",
                  ),
                  Buton(
                      resimLink: "images/play.png",
                      tiklamaButonu: () {
                        kullandigimFonksiyonlar.sectionsSoundsPlay(
                            widget.mainPagedenGelenIndex, resimIndexi);
                      }),
                  Buton(
                    resimLink: "images/next.png",
                    tiklamaButonu: () {
                      indexArtis();
                      if (widget.mainPagedenGelenIndex == 0) {
                        if (resimIndexi == numbersSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 1) {
                        if (resimIndexi == fruitSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 2) {
                        if (resimIndexi == animalsSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 3) {
                        if (resimIndexi == alphabetSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 4) {
                        if (resimIndexi == comHelpsSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 5) {
                        if (resimIndexi == vegatablesSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 6) {
                        if (resimIndexi == vehicleSections.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 7) {
                        if (resimIndexi == shapeSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 8) {
                        if (resimIndexi == colorsSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 9) {
                        if (resimIndexi == daysSections.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 10) {
                        if (resimIndexi == mountsSections.length) {
                          resimIndexi = 0;
                        }
                      }
                      if (widget.mainPagedenGelenIndex == 11) {
                        if (resimIndexi == bodyPartSection.length) {
                          resimIndexi = 0;
                        }
                      }
                      kullandigimFonksiyonlar.sectionsSoundsPlay(
                          widget.mainPagedenGelenIndex, resimIndexi);
                    },
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
