import 'package:flutter/material.dart';
import 'package:kisiselgelisim/ekransabitleri.dart';
import 'package:lottie/lottie.dart';

class AcilisEkrani extends StatefulWidget {
  const AcilisEkrani({Key? key}) : super(key: key);

  @override
  State<AcilisEkrani> createState() => _AcilisEkraniState();
}

class _AcilisEkraniState extends State<AcilisEkrani> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        decoration: BoxDecoration(
          image: Image.network(EkranSabitlerim.AcilisEkraniArkaPlanResmi);

        ),
      ),
    );
  }
}
