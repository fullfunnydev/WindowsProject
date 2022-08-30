// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:untitled1111/listeyapici.dart';


class macsonuclari extends StatefulWidget {
  const macsonuclari({Key? key}) : super(key: key);

  @override
  State<macsonuclari> createState() => _macsonuclariState();
}

class _macsonuclariState extends State<macsonuclari> {
  /* var url =
  Uri.parse('https://www.antoloji.com/populer-sairler/sirala-/sayfa-1/');

  */

  var url2 =
  Uri.parse('https://www.ekisasozler.com/tesekkur-mesajlari.html');

  List<TesekkurMesajlariListesi>TesekkurMesajVerileri = [];

  Future getData() async {
    List<String> tesekkurListesi = [];
    var res = await http.get(url2);
    final body = res.body;
    final document = parser.parse(body);
    //başlık
    //final baslik=document.getElementsByClassName('topic')[0];
    //şair isimleri
    /*final sairisimleri = document
        .getElementsByClassName('pd-text-mini')[1]
        .getElementsByClassName('poem-title-pop')
        .forEach((element) {
      print('Şair İsmi =>${element.children[0].text}');
      //print('Şiir Sayısı =>${element.children[1].text}');
      //print('*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*');

    });*/

    final resimler = document
        .getElementsByClassName('entry-content')[0]
        .getElementsByTagName('p').forEach((element) {
      tesekkurListesi.add(element.text);
    });

    setState(() {
      for (int i = 4; i <= tesekkurListesi.length - 1; i++) {
        //print(tesekkurListesi[i-1].toString());
        TesekkurMesajVerileri.add(
            TesekkurMesajlariListesi(mesajlar: tesekkurListesi[i - 1])
        );
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 40,
          itemBuilder: ((context, index) {
        return Card(

          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: Colors.redAccent,
          child: Text('${TesekkurMesajVerileri[index].mesajlar}'),
        );
      })),

    );
  }
}
/*
sairisimleri=document
        .getElementsByClassName('pd-text-mini')[1]
    .getElementsByClassName('poem-title-pop')
        .forEach((element) {
     // print('Şair İsmi =>${element.children[0].text}');
      //print('Şiir Sayısı =>${element.children[1].text}');
      //print('*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*');
 */