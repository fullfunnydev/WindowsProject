// ignore_for_file: prefer_const_constructors



import 'dart:io';
import 'package:flutter/material.dart';
import 'package:kmikkrktr/resimverileri.dart';
import 'package:share_plus/share_plus.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          bottom: PreferredSize(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 50,
                  child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_hdofadw1.json'),
                )
              ],
            ),
            preferredSize: Size.fromHeight(50),
          ),
          title: Text(''),
        ),
        body: AnaSayfa(),
      ),
    );
  }
}

class AnaSayfa extends StatefulWidget {
 AnaSayfa({Key? key}) : super(key: key);

  @override
  State<AnaSayfa> createState() => _AnaSayfaState();
}
int SayiIndex=0;

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    var wid = MediaQuery.of(context).size.width;
    var heg = MediaQuery.of(context).size.height;

    indexArttir(){
      setState(() {
        SayiIndex++;
        if(SayiIndex==resimler.length){
          SayiIndex=0;
        }
      });
    };
    indexAzalt(){
      SayiIndex--;
      setState(() {
      if(SayiIndex==-1){
        SayiIndex=0;
      }
      });
    };

    Future paylas(BuildContext)async {

     final resimUrl=resimler[SayiIndex];
     final url=Uri.parse(resimUrl);
     final response=await http.get(url);
     final bytes=response.bodyBytes;
      RenderBox? box=context.findAncestorRenderObjectOfType() as RenderBox;
     final temp= await getTemporaryDirectory();
     final path='${temp.path}/images.jpg';
     File(path).writeAsBytesSync(bytes);
      await Share.shareFiles([path],sharePositionOrigin: box.localToGlobal(Offset.zero) &box.size);
    };
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
                  clipBehavior: Clip.hardEdge,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      '${resimler[SayiIndex]}'
                      ,
                      fit: BoxFit.fill,
                    ),
                  ),
                  width: wid / 1,
                  height: heg / 1.40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(

                child: Image.network(
                    'https://icons.iconarchive.com/icons/uiconstock/classy-media/128/fast-rewind-icon.png'),
              onTap: (){
                  indexAzalt();
              },
              ),
              GestureDetector(

                child: Image.network(
                    'https://icons.iconarchive.com/icons/uiconstock/classy-media/128/fast-forward-icon.png'),
              onTap: ()  {
               indexArttir();
                  print('Toplam Karikatür Sayısı=${resimler.length}');

              },

              ),
              GestureDetector(
                onTap: () async{
                  await paylas(context);
                  // Share.share('dssd');
                },
                child: Lottie.network('https://assets2.lottiefiles.com/packages/lf20_ZOuxyx.json'

                ),
              ),

            ],

          ),
        ),
      ],
    );
  }


}
