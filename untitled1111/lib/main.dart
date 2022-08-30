import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' as parser;
import 'package:untitled1111/listeyapici.dart';
import 'package:untitled1111/macsonuclari.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text('Çekilen Veriler Listesi'),
            ),
            body:  macsonuclari()),
      ),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var url =
      Uri.parse('https://www.anlamliasksozleri.net/sevgililer-gunu-sozleri/');

  List<Listem> cekilenBilgilerim = [];

  Future getData() async {
    List<String> gelenveriListesi = [];
    var res = await http.get(url);
    final body = res.body;
    final document = parser.parse(body);
    var response = document
        .getElementsByClassName('entry themeform share')[0]
        .querySelectorAll('p')
        .forEach((element) {
      gelenveriListesi.add(element.text);
    });
      gelenveriListesi.removeAt(31);

    setState(() {
      for(int i=2; i<=gelenveriListesi.length-1;i++){
        // print(gelenveriListesi[i].toString());
        cekilenBilgilerim.add(
            Listem(cekilenBilgiler: gelenveriListesi[i])
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
    return ListView.builder(
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
            print(cekilenBilgilerim.length.toString());
              print('tıklama çalışıyor');
            },
            child: Container(
              width: MediaQuery.of(context).size.width / 1.10,
              height: MediaQuery.of(context).size.height / 6,
              color: Colors.red,
              child: Text('${cekilenBilgilerim[index].cekilenBilgiler}'),
            ),
          ),
        );
      },
      itemCount: cekilenBilgilerim.length,
    );
  }
}
/*
var url = Uri.parse(
      'https://www.kitapyurdu.com/index.php?route=product/category&filter_category_all=true&path=1_2&filter_in_stock=1&sort=publish_date&order=DESC&limit=50&page=1');

  Future getData() async {
    var res = await http.get(url);
    final body = res.body;
    final document = parser.parse(body);
    var response = document
        .getElementsByClassName('product-grid')[0]
        .getElementsByClassName('product-cr')
        .forEach((element) {

      });
 */
