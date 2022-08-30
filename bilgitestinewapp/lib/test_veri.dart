import 'package:bilgitestinewapp/soru.dart';
class TestVeri{
  int soruIndex = 0;
  // ignore: prefer_final_fields
  List<Soru> _soruBanksi = [


    Soru(
        soruMetni: 'Titanik Gelmiş Geçmiş En Büyük Gemidir', soruYaniti: false),
    Soru(
        soruMetni: 'Dünyadaki Tavuk Sayısı İnsan Sayısından Fazldır',
        soruYaniti: true),
    Soru(soruMetni: 'KeleBeklerin Ömrü Bir Gündür', soruYaniti: false),
    Soru(soruMetni: 'Dünya Düzdür', soruYaniti: false),
    Soru(
        soruMetni: 'Kaju Fıstığı Aslnda Bir Meyvenin Sapıdır',
        soruYaniti: true),
    Soru(soruMetni: 'Türkiyenin Başkenti İstanbuldur', soruYaniti: false),
    Soru(
        soruMetni: 'Fatih Sultan Mehmet Hiç Patates Yememiştir',
        soruYaniti: true),
    Soru(
        soruMetni: 'Afyon Plaka Kodu 03 tür',
        soruYaniti: true),
    Soru(
        soruMetni: 'Sümer Şehir Devletlerine Site Denilir',
        soruYaniti: true),
    Soru(
        soruMetni: 'Tarihte Sınıflandırma Yapmanın Temel Amacı Öğrenme Ve Araştırmayı Kolaylaştırmaktır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Ay Yılı Esaslı Takvimlerde 1 yıl 365 gün 6 saattir',
        soruYaniti: false),
    Soru(
        soruMetni: 'Afyon Plaka Kodu 03 tür',
        soruYaniti: true),
    Soru(
        soruMetni: 'Destanlar Sözlü Kaynaktır',
        soruYaniti: true),
    Soru(
        soruMetni: 'Armaları İnceleyerek Tarihe Yardımcı Olan Bilim Dalı Heraldiktir',
        soruYaniti: true)

  ];
  getSoruMetni(){
    return _soruBanksi[soruIndex].soruMetni;
  }
 bool getSoruCevabi(){
    return _soruBanksi[soruIndex].soruYaniti;
  }
  IndexArttir(){

    soruIndex++;
    if(soruIndex==_soruBanksi.length){
      soruIndex=0;
    }
  }
}