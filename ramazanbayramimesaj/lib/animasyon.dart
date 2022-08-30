

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ramazanbayramimesaj/data.dart';
import 'package:share_plus/share_plus.dart';
import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:animated_button/animated_button.dart';


class AnaSayfa extends StatelessWidget {
  TumMesajlar tumMesajlar;
  AnaSayfa({required this.tumMesajlar});

  @override
  Widget build(BuildContext context) {
    double _w = MediaQuery.of(context).size.width;
    double _wW = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 5,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
        ),
        bottom: PreferredSize(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network('https://icons.iconarchive.com/icons/designbolts/religious-symbol/256/ALLAH-icon.png'),
                    radius: 50,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 60,
                    child: Lottie.network('https://assets1.lottiefiles.com/packages/lf20_lhh2mjhe.json'),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network('https://icons.iconarchive.com/icons/designbolts/religious-symbol/256/Dua-icon.png'),
                    radius: 50,
                  ),
                ],
              ),
            ],
          ),
          preferredSize: Size.fromHeight(64),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.purple,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: NetworkImage('https://i.pinimg.com/736x/36/4d/46/364d4642f4ab9cd400d5c430535263fd.jpg',
            ),
          )
              
        ),
        child: AnimationLimiter(
          child: ListView.builder(
            padding: EdgeInsets.all(_w / 30),
            physics:
            BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            itemCount: MesajlariListele.length,
            itemBuilder: (BuildContext context, int index) {
              Future yaziyiPaylas(BuildContext) async{
                var mesaj=MesajlariListele[index].kisaMesaj.toString();
                await Share.share(mesaj);
              };
              return AnimationConfiguration.staggeredList(
                position: index,
                delay: Duration(milliseconds: 100),
                child: SlideAnimation(
                  duration: Duration(milliseconds: 2500),
                  curve: Curves.elasticIn,
                  verticalOffset: -250,
                  child: ScaleAnimation(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.easeInOutCirc,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: BlurryContainer(
                        width: _w/1,
                        height: _wW/2.1,
                          blur: 5,
                        padding: EdgeInsets.all(0),
                        bgColor: Colors.black,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${MesajlariListele[index].kisaMesaj}',style:GoogleFonts.righteous(
                                color: Colors.yellowAccent,

                                fontSize: 23,
                                fontWeight: FontWeight.w400

                              ) ),
                            ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               GestureDetector(
                                 onTap: (){
                                   yaziyiPaylas(BuildContext);
                                 },
                                 child:CircleAvatar(
                                   radius: 40,
                                   backgroundColor: Colors.transparent,
                                   child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_hsGHVr.json'),
                                 ),
                               ),
                             ],
                           ),
                          ],
                        ),

                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

/*
CircleAvatar(
                                   radius: 40,
                                   backgroundColor: Colors.transparent,
                                   child: Lottie.network('https://assets5.lottiefiles.com/packages/lf20_hsGHVr.json'),
                                 ),
 */


/*
AnimatedButton(onPressed: (){
                                   yaziyiPaylas(BuildContext);
                                 },
                                     color: Colors.redAccent,
                                     enabled: true,
                                     shape:BoxShape.rectangle,
                                     shadowDegree: ShadowDegree.dark,
                                     child: Text('PAYLAŞ',style: GoogleFonts.righteous(
                                       color: Colors.green,
                                       fontWeight: FontWeight.bold,
                                       fontSize: 25
                                     ),))
 */