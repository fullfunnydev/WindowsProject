// ignore_for_file: sort_child_properties_last

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:learngenglish/FontRenkLink.dart';
import 'package:learngenglish/mainres.dart';
import 'package:learngenglish/resultPage.dart';

class mainMenuCont extends StatelessWidget {
  mainMenuCont({
    //const eklenecek
    Key? key,
  }) : super(key: key);

  AssetsAudioPlayer sesDosyalriniOynat = AssetsAudioPlayer();
  SesDosyalari sesleriOynat = SesDosyalari();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          itemCount: 12,
          gridDelegate: (const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2)),
          itemBuilder: (BuildContext gridContext, int gridIndex) {
            return ClipRRect(
              borderRadius: EkranyaziFontRenkLink.borderRadiusDegeriMenu,
              child: GestureDetector(
                onTap: () {
                  sesleriOynat.gridIndexeGoreSesOynat(gridIndex);
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, a, b) => resultPage(
                          mainPagedenGelenIndex: gridIndex,
                        ),
                      ));
                },
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                            top: Radius.circular(15)),
                        child: Container(
                          child: Image.asset(
                            "${mainPictr[gridIndex]}",
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Container(
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ScaleAnimatedText('${menuName[gridIndex]}',
                                duration: Duration(milliseconds: 1500),
                                textStyle: EkranyaziFontRenkLink.textStyle),
                          ],
                        ),
                        decoration: const BoxDecoration(),
                      )
                    ],
                  ),
                  margin: EkranyaziFontRenkLink.marginDegeriMenu,
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(.6),
                      borderRadius:
                          EkranyaziFontRenkLink.borderRadiusDegeriMenu),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
