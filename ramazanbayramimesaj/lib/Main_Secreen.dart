
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ramazanbayramimesaj/animasyon.dart';
import 'package:ramazanbayramimesaj/data.dart';

class MainSecreen extends StatefulWidget {
  const MainSecreen({Key? key}) : super(key: key);

  @override
  State<MainSecreen> createState() => _MainSecreenState();
}

class _MainSecreenState extends State<MainSecreen> {
  @override
  Widget build(BuildContext context) {
    var vid=MediaQuery.of(context).size.width;
    var heg=MediaQuery.of(context).size.height;

    return Center(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ContainerWidget(vid: vid, heg: heg,
            ilgiliSayfayaGit: (){
              print('Resimli Mesajlar tıklandı');
            },
            kutuBorder: BorderRadius.circular(22),
            child: Text('Resimli MEsajlar'),
              kutuRengi: Colors.blueGrey,
            ),

            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ContainerWidget(kutuRengi: Colors.deepOrange,
                  kutuBorder: BorderRadius.circular(22),
                  child: Text('Yazılı MEsajlar'),
                  ilgiliSayfayaGit: (){
                print('Yazı Ekrandaysa Tıklama Çalışlıyor');
                    Navigator.push(context,
                        PageRouteBuilder(pageBuilder: (context,a,b)=>AnaSayfa(
                          tumMesajlar: MesajlariListele[0],
                        )));
                    },
                  vid: vid, heg: heg),
            )
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {

  Widget child;
  Color kutuRengi;
  Function ilgiliSayfayaGit;
  BorderRadiusGeometry? kutuBorder;
   ContainerWidget({
    Key? key,
  this.kutuBorder,
   required this.ilgiliSayfayaGit,
     required this.kutuRengi,
     required this.child,
     required this.vid,
    required this.heg,
  }) : super(key: key);

  final double vid;
  final double heg;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        ilgiliSayfayaGit();
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          child: child,
          width: vid/1.30,
          height: heg/5,
          decoration: BoxDecoration(
            color:kutuRengi,
            borderRadius: kutuBorder,
          ),
        ),
      ),
    );
  }
}
