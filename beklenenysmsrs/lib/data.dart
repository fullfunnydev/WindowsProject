// ignore_for_file: prefer_final_fields, non_constant_identifier_names

import 'package:beklenenysmsrs/geciciharfler.dart';
import 'package:flutter/material.dart';

class YapiciListem {
  String kelime;
  String KelimeAnlami;

  YapiciListem({required this.kelime, required this.KelimeAnlami});
}

class AharfiKelimeVeAnlami {
  List<YapiciListem> a_Harfi_kelime_Ve_Anlami = [
    YapiciListem(
      kelime: 'Abesle İştigal',
      KelimeAnlami: 'Yersiz, yararsız işlerle vakit öldürmek',
    ),
    YapiciListem(
      kelime: 'Absorbe',
      KelimeAnlami:
          '(Enerji, kuvvet vb. için) Soğurma, yutma, içine alma, yutma.',
    ),
    YapiciListem(
      kelime: 'Adaptasyon',
      KelimeAnlami: 'Uyarlama',
    ),
    YapiciListem(
      kelime: 'Adapte',
      KelimeAnlami: 'Uyum',
    ),
    YapiciListem(
      kelime: 'Afaki',
      KelimeAnlami: 'Belli bir konu üzerine olmayan, dereden tepeden (konuşma)',
    ),
    YapiciListem(
      kelime: 'Ajitasyon',
      KelimeAnlami: 'Duygu Sömürüsü Yapma',
    ),
    YapiciListem(
        kelime: 'ajite'.toUpperCase(),
        KelimeAnlami: 'Duygu sömürüsü, kışkırtmak, körüklemek'),
    YapiciListem(
        kelime: 'akabinde'.toUpperCase(),
        KelimeAnlami: 'Arkasından, hemen arkadan'),
    YapiciListem(kelime: 'akustik'.toUpperCase(), KelimeAnlami: 'Yankı Bilimi'),
    YapiciListem(
        kelime: 'aktivite'.toUpperCase(), KelimeAnlami: 'Etkinlik, faaliyet'),
    YapiciListem(
        kelime: 'aktüalite'.toUpperCase(),
        KelimeAnlami: 'Güncellik.Günün olayı veya konusu'),
    YapiciListem(kelime: 'aktüel'.toUpperCase(), KelimeAnlami: ' Güncel'),
    YapiciListem(
        kelime: 'aleyhtar'.toUpperCase(),
        KelimeAnlami: 'Karşıtçı.Karşı Görüşlü'),
    YapiciListem(
        kelime: 'alicenap'.toUpperCase(),
        KelimeAnlami: 'Cömert,onurlu,şerefli'),
    YapiciListem(kelime: 'almanak'.toUpperCase(), KelimeAnlami: 'Yıllık'),
    YapiciListem(
        kelime: 'ambiyans'.toUpperCase(),
        KelimeAnlami: 'Durum, ortam, çevre, atmosfer, hava'),
    YapiciListem(kelime: 'amorf'.toUpperCase(), KelimeAnlami: 'Biçimsiz'),
    YapiciListem(
        kelime: 'anbean'.toUpperCase(),
        KelimeAnlami: 'Her an, zaman ilerledikçe'),
    YapiciListem(
        kelime: 'anekdot'.toUpperCase(),
        KelimeAnlami: 'Kısa öykü,hikayecik,olağanüstü olaylarla ilgili anlatı'),
    YapiciListem(
        kelime: 'angaje etmek'.toUpperCase(), KelimeAnlami: 'Bağlamak'),
    YapiciListem(
        kelime: 'anomali'.toUpperCase(),
        KelimeAnlami: 'Belli bir ölçüye, belli kurala uymama durumu'),
    YapiciListem(
        kelime: 'antipatik'.toUpperCase(),
        KelimeAnlami: 'Sevimsiz, itici, soğuk'),
    YapiciListem(
        kelime: 'antrparantez'.toUpperCase(),
        KelimeAnlami: 'Söz arasında, sırası gelmişken. Ayrıca'),
    YapiciListem(
        kelime: 'araf'.toUpperCase(),
        KelimeAnlami:
            'BCennet ile cehennem arasında bir yer. Mecazi olarak "Ara"'),
    YapiciListem(
        kelime: 'arafta kalmak'.toUpperCase(), KelimeAnlami: 'Arada kalmak'),
    YapiciListem(kelime: 'aranje'.toUpperCase(), KelimeAnlami: 'Düzenlemek'),
    YapiciListem(
        kelime: 'arena'.toUpperCase(),
        KelimeAnlami: 'Alan. Siyasi çekişmelerin geçtiği yer'),
    YapiciListem(
        kelime: 'argüman'.toUpperCase(),
        KelimeAnlami: 'Delil, kanıt, tez, iddia, sav'),
    YapiciListem(
        kelime: 'arketip'.toUpperCase(),
        KelimeAnlami: 'İlk (kök) örnek, ilk ve özgün biçim'),
    YapiciListem(kelime: 'aroma'.toUpperCase(), KelimeAnlami: 'Hoş koku'),
    YapiciListem(
        kelime: 'arz etmek'.toUpperCase(),
        KelimeAnlami: 'Sunmak, saygı ile bildirmek'),
    YapiciListem(kelime: 'asparagas'.toUpperCase(), KelimeAnlami: 'Uydurma'),
    YapiciListem(
        kelime: 'atıf'.toUpperCase(),
        KelimeAnlami: 'Gönderme, ilişkili bulma, bağlantı'),
    YapiciListem(
        kelime: 'avangart'.toUpperCase(), KelimeAnlami: ' Öncü,yenilikçi'),
    YapiciListem(
        kelime: 'ayrışmak'.toUpperCase(),
        KelimeAnlami: 'Birbirinden ayrılmak, birliği bozulmak'),
    YapiciListem(kelime: 'ayrıyeten'.toUpperCase(), KelimeAnlami: 'Ayrıca'),
    YapiciListem(kelime: 'aysberg'.toUpperCase(), KelimeAnlami: 'Buz Dağı'),
  ];

}

class BharfiKelimeVeAnlami {

  List<YapiciListem> b_Harfi_kelime_Ve_Anlami = [
    YapiciListem(
        kelime: 'badire'.toUpperCase(),
        KelimeAnlami: 'Birdenbire ortaya çıkan tehlikeli durum'),
    YapiciListem(
        kelime: 'bağlam'.toUpperCase(),
        KelimeAnlami:
            ' Herhangi bir olguda olaylar, durumlar, ilişkiler örgüsü veya bağlantısı'),
    YapiciListem(
        kelime: 'bendeniz'.toUpperCase(),
        KelimeAnlami: 'Alçak gönüllülük ile "ben" anlamında kullanılır'),
    YapiciListem(
        kelime: 'beyanat'.toUpperCase(), KelimeAnlami: ' Demeç, bildiri'),
    YapiciListem(
        kelime: 'beyhude'.toUpperCase(),
        KelimeAnlami: 'Yararsız, anlamsız, boşuna'),
    YapiciListem(
        kelime: 'beynelmilel'.toUpperCase(),
        KelimeAnlami: 'Herkes tarafından kabul edilen'),
    YapiciListem(
        kelime: 'bilahare'.toUpperCase(),
        KelimeAnlami: 'Sonra, sonradan, daha sonra'),
    YapiciListem(
        kelime: 'bilakis'.toUpperCase(), KelimeAnlami: 'Tam tersine,aksine'),
    YapiciListem(kelime: 'bilhassa'.toUpperCase(), KelimeAnlami: 'Özellikle'),
    YapiciListem(
        kelime: 'binaenaleyh'.toUpperCase(),
        KelimeAnlami: 'Dayanarak, -den ötürü, -den dolayı'),
    YapiciListem(
        kelime: 'binaen'.toUpperCase(),
        KelimeAnlami: 'Bundan dolayı bu bağlamda'),
    YapiciListem(
        kelime: 'bundan mütevellit'.toUpperCase(),
        KelimeAnlami: 'Bundan meydana gelmiş,ileri gelmiş'),
  ];

}

class CHarfiKelimeVeAnlami{
  List<YapiciListem>c_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'Cevher'.toUpperCase(), KelimeAnlami: 'Bir Şeyin Özü Ve En Değerli Parçası'),
    YapiciListem(kelime: 'Cins'.toUpperCase(), KelimeAnlami: 'Tür Çeşit'),
    YapiciListem(kelime: 'Canlı'.toUpperCase(), KelimeAnlami: 'Sağ Hayatta Olan'),
    YapiciListem(kelime: 'Cebir'.toUpperCase(), KelimeAnlami: 'Zor Kullanarak'),
    YapiciListem(kelime: 'Cesaret'.toUpperCase(), KelimeAnlami: 'Bir şeyi yapabilme cüreti'),
    YapiciListem(kelime: 'Cisim'.toUpperCase(), KelimeAnlami: 'Madde'),
    YapiciListem(kelime: 'Ceza'.toUpperCase(), KelimeAnlami: 'Yaptırım'),
    YapiciListem(kelime: 'Cüda'.toUpperCase(), KelimeAnlami: 'Kişinin memleketinden ayrı kalması'),
  ];

}

class CcHarfiKelimeVeAnlami{ //ç harfi için
  List<YapiciListem>Cc_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'Çağrışım', KelimeAnlami: 'Bir düşünce,görüntü vb.nin bir başkasını hatırlatması'),
  ];

}

class DarfiKelimeVeAnlami{
  List<YapiciListem>d_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'Data'.toUpperCase(),KelimeAnlami: 'Veri'),
    YapiciListem(kelime: 'defaatle'.toUpperCase(),KelimeAnlami: 'Defalarca, tekrar tekrar'),
    YapiciListem(kelime: 'defakto'.toUpperCase(),KelimeAnlami: 'Bilfiil, fiilen, hakikatte, gerçekte veya pratikte'),
    YapiciListem(kelime: 'Defans'.toUpperCase(),KelimeAnlami: 'Savunma'),
    YapiciListem(kelime: 'Defaten'.toUpperCase(),KelimeAnlami: 'Defalarca'),
    YapiciListem(kelime: 'dejenerasyon'.toUpperCase(),KelimeAnlami: 'Bozulma'),
    YapiciListem(kelime: 'Dejanere'.toUpperCase(),KelimeAnlami: 'Bozulmuş, soysuzlaşmış'),
    YapiciListem(kelime: 'Deklarasyon'.toUpperCase(),KelimeAnlami: 'Bildiri'),
    YapiciListem(kelime: 'Deklare'.toUpperCase(),KelimeAnlami: 'Bildirmek'),
    YapiciListem(kelime: 'Demagoji'.toUpperCase(),KelimeAnlami: ' Laf ebeliği, lafazanlık'),
    YapiciListem(kelime: 'demo'.toUpperCase(),KelimeAnlami: 'Tanıtım için olan'),
    YapiciListem(kelime: 'depertman'.toUpperCase(),KelimeAnlami: 'Tanıtım için olan'),
    YapiciListem(kelime: 'desise'.toUpperCase(),KelimeAnlami: 'Aldatma, oyun, düzen, hile'),
    YapiciListem(kelime: 'despot'.toUpperCase(),KelimeAnlami: 'Buyurgan'),
    YapiciListem(kelime: 'destinasyon'.toUpperCase(),KelimeAnlami: 'Gidilecek Yer'),
    YapiciListem(kelime: 'detone'.toUpperCase(),KelimeAnlami: 'Ses kayması, ses tonunu bulamama'),
    YapiciListem(kelime: 'devinim'.toUpperCase(),KelimeAnlami: ' Zaman içinde durum değiştirme. Hareket'),
    YapiciListem(kelime: 'deyim yerindeyse'.toUpperCase(),KelimeAnlami: 'Söylenen sözün uygun olması umuduyla'),
    YapiciListem(kelime: 'dezenformasyon'.toUpperCase(),KelimeAnlami: 'Yanıltma, bilgi çarpıtma'),
    YapiciListem(kelime: 'diaspora'.toUpperCase(),KelimeAnlami: 'Azınlıklar ve bunların yaşadıkları yer veya yurt'),
    YapiciListem(kelime: 'dikte'.toUpperCase(),KelimeAnlami: 'Birine isteklerini zorla kabul ettirmek. Bir başkasına söyleyerek yazdırma ve yazdırılan yazı'),
    YapiciListem(kelime: 'dogma'.toUpperCase(),KelimeAnlami: 'Belli bir konuda ileri sürülen bir görüşün sorgulanamaz, tartışılamaz gerçek olarak kabul edilmesi'),
    YapiciListem(kelime: 'doğaçlama'.toUpperCase(),KelimeAnlami: 'Önceden düşünüp hazırlanmadan içe doğduğu gibi söyleme veya bir şey yapma'),
    YapiciListem(kelime: 'doktrin'.toUpperCase(),KelimeAnlami: 'Öğreti'),
    YapiciListem(kelime: 'doküman'.toUpperCase(),KelimeAnlami: 'Belge'),
    YapiciListem(kelime: 'donatı'.toUpperCase(),KelimeAnlami: 'Teçhizat, araç gereç'),
    YapiciListem(kelime: 'done'.toUpperCase(),KelimeAnlami: ' Veri, bilgi'),
    YapiciListem(kelime: 'duayen'.toUpperCase(),KelimeAnlami: ' Alanının uzmanı, işinin erbabı'),
    YapiciListem(kelime: 'duyumsamak'.toUpperCase(),KelimeAnlami: 'Duyular aracılığıyla bir şeyi algılamak'),

  ];

}


class EHarfiKelimeVeAnlami{
  List<YapiciListem>e_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime:'edinim'.toUpperCase(), KelimeAnlami:'Kazanma, kazanç'),
    YapiciListem(kelime:'efor'.toUpperCase(), KelimeAnlami:'Çaba, gayret, güç'),
    YapiciListem(kelime:'efsun'.toUpperCase(), KelimeAnlami:'Büyü'),
    YapiciListem(kelime:'egale'.toUpperCase(), KelimeAnlami:'Bir rekoru yinelemek" anlamındaki egale etmek sözünde geçer'),
    YapiciListem(kelime:'ego'.toUpperCase(), KelimeAnlami:'Ben'),
    YapiciListem(kelime:'egoist'.toUpperCase(), KelimeAnlami:'Bencil'),
    YapiciListem(kelime:'egzotik'.toUpperCase(), KelimeAnlami:'Yabancı bir ülkeden gelme, bulunduğu yörede bulunmayan, yabancıl'),
    YapiciListem(kelime:'ehemmiyet'.toUpperCase(), KelimeAnlami:'Önem anlamında, ehemmiyetli önemli olarak da kullanılabilir'),
    YapiciListem(kelime:'ekarte'.toUpperCase(), KelimeAnlami:'Saf dışı etmek, konu dışında tutmak'),
    YapiciListem(kelime:'ekoloji'.toUpperCase(), KelimeAnlami:'Çevre bilimi'),
    YapiciListem(kelime:'ekipman'.toUpperCase(), KelimeAnlami:'Donanım'),
    YapiciListem(kelime:'eklektik'.toUpperCase(), KelimeAnlami:'Her sistemin sunduğunun en iyisini almak denilebilir felsefi olarak. Seçmeci'),
    YapiciListem(kelime:'ekseriyet'.toUpperCase(), KelimeAnlami:'Çoğunluk, çokluk'),
    YapiciListem(kelime:'ekstrem'.toUpperCase(), KelimeAnlami:'Aşırı, uç, sıradışı'),
    YapiciListem(kelime:'elimine'.toUpperCase(), KelimeAnlami:'Eleme'),
    YapiciListem(kelime:'elzem'.toUpperCase(), KelimeAnlami:'Zorunlu'),
    YapiciListem(kelime:'empati'.toUpperCase(), KelimeAnlami:'Aynı duyguları paylaşma, duygudaşlık'),
    YapiciListem(kelime:'empoze'.toUpperCase(), KelimeAnlami:'Dayatmak'),
    YapiciListem(kelime:'enformasyon'.toUpperCase(), KelimeAnlami:'Bilgilendirme, danışma, tanıtma. Haber alma, haber verme, haberleşme'),
    YapiciListem(kelime:'enstantane'.toUpperCase(), KelimeAnlami:'Anlık. Bir fotoğrafın çekildiği kısa süre'),
    YapiciListem(kelime:'enstrüman'.toUpperCase(), KelimeAnlami:' Çalgı. Mali belge'),
    YapiciListem(kelime:'entegre'.toUpperCase(), KelimeAnlami:'Bütünleşmiş'),
    YapiciListem(kelime:'entrika'.toUpperCase(), KelimeAnlami:'Bir işi sağlamak veya bozmak için girişilen gizli çalışma'),
    YapiciListem(kelime:'entropi'.toUpperCase(), KelimeAnlami:'Enerjinin tesadüfen, düzensiz ve geriye dönüşümsüz olarak dağılması'),
    YapiciListem(kelime:'epik'.toUpperCase(), KelimeAnlami:'Destansı'),
    YapiciListem(kelime:'ergonomik'.toUpperCase(), KelimeAnlami:'Kullanışlı'),
    YapiciListem(kelime:'esasen'.toUpperCase(), KelimeAnlami:'Zaten'),
    YapiciListem(kelime:'esasında'.toUpperCase(), KelimeAnlami:'Aslında demenin farklı bir yolu'),
    YapiciListem(kelime:'estetik'.toUpperCase(), KelimeAnlami:' Güzellik duygusuna uygun olan, sanatsal.'),
    YapiciListem(kelime:'etik'.toUpperCase(), KelimeAnlami:'Ahlaki, ahlakla ilgili'),
    YapiciListem(kelime:'etnik'.toUpperCase(), KelimeAnlami:'Bir topluluğun oluşturduğu, kültürel gruba özgü her türlü özellik'),
    YapiciListem(kelime:'ezoterik'.toUpperCase(), KelimeAnlami:'Gizemli. Yalnızca sınırlı, dar bir çevreye aktarılan (her türlü bilgi, öğreti'),
  ];
}

class FHarfiKelimeVeAnlami{
  List<YapiciListem>f_harfi_kelime_ve_Anlami=[
     YapiciListem(kelime: 'farazi'.toUpperCase(), KelimeAnlami: 'Varsayımsal'),
     YapiciListem(kelime: 'farkındalık'.toUpperCase(), KelimeAnlami: 'Farkındalık, bir canlının çevresinde gelişen olayları bilme, algılama ve duyumsama becerisidir'),
     YapiciListem(kelime: 'fenomen'.toUpperCase(), KelimeAnlami: 'Olağanüstü şey, harika'),
     YapiciListem(kelime: 'fikstür'.toUpperCase(), KelimeAnlami: ' Yarışma veya karşılaşmaların zamanını ve sırasını belirleyen çizelge'),
     YapiciListem(kelime: 'filhakika'.toUpperCase(), KelimeAnlami: ' Gerçekten, doğrusu, hakikaten'),
     YapiciListem(kelime: 'fizibilite'.toUpperCase(), KelimeAnlami: ' Herhangi bir yatırımın sağlayacağı kazanca değer olup olmadığının saptanması için yapılan çalışmalardır'),
     YapiciListem(kelime: 'flora'.toUpperCase(), KelimeAnlami: 'Bitki örtüsü'),
     YapiciListem(kelime: 'fonetik'.toUpperCase(), KelimeAnlami: 'Ses bilgisi'),
     YapiciListem(kelime: 'format'.toUpperCase(), KelimeAnlami: 'Biçim'),
     YapiciListem(kelime: 'fraksiyon'.toUpperCase(), KelimeAnlami: 'Parti içi karşıt grup, parça'),
     YapiciListem(kelime: 'fütursuzca'.toUpperCase(), KelimeAnlami: 'Önemsemeyerek, aldırmayarak'),
     YapiciListem(kelime: 'fütürist'.toUpperCase(), KelimeAnlami: 'Gelecekçi'),
  ];
}

class GHarfiKelimeVeAnlami{
  List<YapiciListem>g_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'garantör'.toUpperCase(), KelimeAnlami: ' Güvence veren'),
    YapiciListem(kelime: 'gark olmak'.toUpperCase(), KelimeAnlami: ' Gömülmek, batmak, boğulmak'),
    YapiciListem(kelime: 'gayri ihtiyari'.toUpperCase(), KelimeAnlami: 'İstemeyerek, düşünmeden, elinde olmayarak'),
    YapiciListem(kelime: 'gayri tabii'.toUpperCase(), KelimeAnlami: 'Olağan dışı'),
    YapiciListem(kelime: 'gelgelelim'.toUpperCase(), KelimeAnlami: ' Ne var ki'),
    YapiciListem(kelime: 'gıyabi'.toUpperCase(), KelimeAnlami: 'Bir kimse bulunmadığı sırada yapılan, verilen. Uzaktan, görüşmeden olan'),
    YapiciListem(kelime: 'global'.toUpperCase(), KelimeAnlami: 'Küresel, dünya çapında'),
  ];
}

class HHarfiKelimeVeAnlami{
  List<YapiciListem>h_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'haddizatında'.toUpperCase(), KelimeAnlami: 'Aslında'),
    YapiciListem(kelime: 'hakikaten'.toUpperCase(), KelimeAnlami: 'Gerçekten'),
    YapiciListem(kelime: 'handikap'.toUpperCase(), KelimeAnlami: 'Engel'),
    YapiciListem(kelime: 'harikulade'.toUpperCase(), KelimeAnlami: ' Eşi görülmemiş, şaşkınlık oluşturan, olağanüstü'),
    YapiciListem(kelime: 'hinterlant'.toUpperCase(), KelimeAnlami: 'İç bölge, arka bahçe'),
    YapiciListem(kelime: 'hipotez'.toUpperCase(), KelimeAnlami: 'Varsayım'),
    YapiciListem(kelime: 'hiyerarşi'.toUpperCase(), KelimeAnlami: ' Aşama sırası. Sıralanım. Makam sırası, basamak, derece düzeni, aşama sırası'),
    YapiciListem(kelime: 'husus'.toUpperCase(), KelimeAnlami: 'Konu'),
    YapiciListem(kelime: 'hülasa'.toUpperCase(), KelimeAnlami: 'Özetle, kısacası'),

  ];
}

class IHarfiKelimeVeAnlami{
  List<YapiciListem>I_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'ıkınmak'.toUpperCase(), KelimeAnlami: 'Herhangi bir nedenle soluğunu içinde tutarak kendini zorlamak'),
    YapiciListem(kelime: 'ıklamak'.toUpperCase(), KelimeAnlami: 'Yük altında güçlükle solumak'),
    YapiciListem(kelime: 'ılgarcı'.toUpperCase(), KelimeAnlami: 'Ilgarla düşman toprağına saldıran kimse'),
    YapiciListem(kelime: 'ıraklık'.toUpperCase(), KelimeAnlami: 'Uzaklık'),
    YapiciListem(kelime: 'ısırmak'.toUpperCase(), KelimeAnlami: 'Dişleri arasına alıp sıkmak'),
    YapiciListem(kelime: 'ısıtıcı'.toUpperCase(), KelimeAnlami: 'Bir nesnenin, genellikle bir akışkanın sıcaklığını, kullanmadan önce arttırmaya yarayan alet'),
    YapiciListem(kelime: 'ıttırat'.toUpperCase(), KelimeAnlami: 'Birbirini izleme, birbiri arkasından gelme, düzenli sıralanma'),
    YapiciListem(kelime: 'ışıldak'.toUpperCase(), KelimeAnlami: 'Karanlıkta bir hedefi aydınlatmak için kullanılan dar, uzun bir ışın demeti çıkaran ışık kaynağı, projektör'),
    YapiciListem(kelime: 'ıtlak'.toUpperCase(), KelimeAnlami: 'Salıverme, koyuverme'),

  ];

}

class iHarfiKelimeVeAnlami{
  List<YapiciListem>i_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'idol'.toUpperCase(), KelimeAnlami: 'Kayıtsız şartsız bağlanılan ve sevilen şey'),
    YapiciListem(kelime: 'ilinti'.toUpperCase(), KelimeAnlami: 'İki şey arasında ilgi, ilişki, bağ'),
    YapiciListem(kelime: 'ilintilemek'.toUpperCase(), KelimeAnlami: 'Bir şeyle ilgili kılmak, bağ ve alaka kurmak'),
    YapiciListem(kelime: 'illüstrasyon'.toUpperCase(), KelimeAnlami: 'Resimleme'),
    YapiciListem(kelime: 'imaj'.toUpperCase(), KelimeAnlami: 'Görüntü'),
    YapiciListem(kelime: 'imge'.toUpperCase(), KelimeAnlami: 'Düş, hayal. Genel görünüş, izlenim, imaj'),
    YapiciListem(kelime: 'imitasyon'.toUpperCase(), KelimeAnlami: 'Taklit'),
    YapiciListem(kelime: 'inisiyatif'.toUpperCase(), KelimeAnlami: 'Öncelik, üstünlük'),
    YapiciListem(kelime: 'inovasyon'.toUpperCase(), KelimeAnlami: 'Yenilik'),
    YapiciListem(kelime: 'ironi'.toUpperCase(), KelimeAnlami: 'Söylenen sözün tersini kastederek kişiyle veya olayla alay etme'),
    YapiciListem(kelime: 'ironik'.toUpperCase(), KelimeAnlami: 'İroniye dayalı'),
    YapiciListem(kelime: 'irrite'.toUpperCase(), KelimeAnlami: 'Sinirlendirmek, rahatsız etmek" ve tıp alanında "tahriş etmek, kaşındırmak" anlamında irrite etmek birleşik fiilinde kullanılan bir söz'),
    YapiciListem(kelime: 'ismi ile müsemma'.toUpperCase(), KelimeAnlami: 'İsminin içerdiği manayı karakter olarak bulundurma hali'),
    YapiciListem(kelime: 'istinaden'.toUpperCase(), KelimeAnlami: 'Bir görüşe, bir düşünceye dayanarak. Bir söyleme göre'),
  ];

}

class JHarfiKelimeVeAnlami{
  List<YapiciListem>j_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'jakoben'.toUpperCase(), KelimeAnlami: 'Demokrasi yanlısı. Tepeden inmeci'),
    YapiciListem(kelime: 'jakuzi'.toUpperCase(), KelimeAnlami: 'Yıkanma havuzu'),
    YapiciListem(kelime: 'jaluzi'.toUpperCase(), KelimeAnlami: 'Şeritlerden oluşan perde'),
    YapiciListem(kelime: 'jargon', KelimeAnlami: 'Belli bir zümreye veya meslek grubuna özgü günlük konuşmada kullanılan kelimeler bütünü, ağız'),
    YapiciListem(kelime: 'jenerasyon', KelimeAnlami: 'Kuşak, nesil'),
    YapiciListem(kelime: 'jenerik', KelimeAnlami: 'Tanıtma adı ya da yazısı'),
  ];
}

class KHarfiKelimeVeAnlami{
  List<YapiciListem>k_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'kadim'.toUpperCase(), KelimeAnlami: 'Eski zamanlara ait'),
    YapiciListem(kelime: 'kadirşinas'.toUpperCase(), KelimeAnlami: 'Değerbilir'),
    YapiciListem(kelime: 'kampüs'.toUpperCase(), KelimeAnlami: 'Yerleşke'),
    YapiciListem(kelime: 'kalibrasyon'.toUpperCase(), KelimeAnlami: 'Ölçümleme'),
    YapiciListem(kelime: 'kalifikasyon'.toUpperCase(), KelimeAnlami: 'Ustalık kazanma, vasıflı nitelikli olma'),
    YapiciListem(kelime: 'kanalize olmak'.toUpperCase(), KelimeAnlami: 'Tek bir hedefe kilitlenmek, odaklanmak'),
    YapiciListem(kelime: 'kanıksamak'.toUpperCase(), KelimeAnlami: 'Çok tekrarlama sebebiyle etkilenmez olmak, alışmak'),
    YapiciListem(kelime: 'kaos'.toUpperCase(), KelimeAnlami: 'Karışıklık'),
    YapiciListem(kelime: 'kaotik'.toUpperCase(), KelimeAnlami: 'Kaos, karmaşık olma durumu, kargaşa hali'),
    YapiciListem(kelime: 'kapı aralamak'.toUpperCase(), KelimeAnlami:'Bir konuya giriş yapmak, karşısındakini hazırlamak'),
    YapiciListem(kelime: 'karakteristik'.toUpperCase(), KelimeAnlami:'Bir kimse veya nesneye özgü olan (ayırıcı nitelik), tipik'),
    YapiciListem(kelime: 'kariyer'.toUpperCase(), KelimeAnlami: 'Meslek, uzmanlaşma'),
    YapiciListem(kelime: 'karizma'.toUpperCase(), KelimeAnlami: 'Büyüleyici özellik'),
    YapiciListem(kelime: 'klasifikasyon'.toUpperCase(), KelimeAnlami: 'Sınıflandırma'),
    YapiciListem(kelime: 'klon'.toUpperCase(), KelimeAnlami: 'Kopya'),
    YapiciListem(kelime: 'kombinasyon'.toUpperCase(), KelimeAnlami: 'Birleştirme'),
    YapiciListem(kelime: 'kompanse'.toUpperCase(), KelimeAnlami: 'Dengelenmiş'),
    YapiciListem(kelime: 'kompetan'.toUpperCase(), KelimeAnlami: 'Uzman, yetkili'),
    YapiciListem(kelime: 'kompleks'.toUpperCase(), KelimeAnlami: 'Karmaşık'),
    YapiciListem(kelime: 'komplike'.toUpperCase(), KelimeAnlami: 'Karmaşık, çözülmesi ve anlaşılması güç'),
    YapiciListem(kelime: 'konfirmasyon'.toUpperCase(), KelimeAnlami: 'Doğrulama, geçerleme, onaylama'),
    YapiciListem(kelime: 'konjonktür'.toUpperCase(), KelimeAnlami: 'Bir ülkenin ekonomik ve siyasi durumunu ifade eden bir kelime'),
    YapiciListem(kelime: 'konsantrasyon'.toUpperCase(), KelimeAnlami: 'Yoğunlaşma'),
    YapiciListem(kelime: 'konsensüs'.toUpperCase(), KelimeAnlami: 'Görüş birliği, bir noktada anlaşma, uzlaşı'),
    YapiciListem(kelime: 'konsept'.toUpperCase(), KelimeAnlami: 'Kavram. Tarz. Anlayış, görüş'),
    YapiciListem(kelime: 'konsültasyon'.toUpperCase(), KelimeAnlami: 'Doktorların fikir alışverişi, danışım'),
    YapiciListem(kelime: 'kontrast'.toUpperCase(), KelimeAnlami: 'Karşıt, karşıtlık'),
    YapiciListem(kelime: 'koordinasyon'.toUpperCase(), KelimeAnlami: 'Eşgüdüm, uyum'),
    YapiciListem(kelime: 'koordine'.toUpperCase(), KelimeAnlami: 'Çeşitli işler arasında bağlantı, uyum ve düzen sağlama, eş güdüm'),
    YapiciListem(kelime: 'kozmik'.toUpperCase(), KelimeAnlami: 'Evrensel'),
    YapiciListem(kelime: 'kozmopolit'.toUpperCase(), KelimeAnlami: 'Farklı etnik kökenlerden insanları içinde bulunduran'),
    YapiciListem(kelime: 'kripto'.toUpperCase(), KelimeAnlami: 'Gizli, saklı, şifreli'),
    YapiciListem(kelime: 'kriter'.toUpperCase(), KelimeAnlami: 'Ölçüt, kıstas'),
    YapiciListem(kelime: 'kuvvetle muhtemel'.toUpperCase(), KelimeAnlami: 'Büyük bir ihtimal'),
    YapiciListem(kelime: 'kümülatif'.toUpperCase(), KelimeAnlami: 'Toplam'),
  ];

}

class LHarfiKelimeVeAnlami{
  List<YapiciListem>l_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'lakin'.toUpperCase(), KelimeAnlami: 'Ama,ancak'),
    YapiciListem(kelime: 'lanse etmek'.toUpperCase(), KelimeAnlami: 'Öne sürmek,sunmak'),
    YapiciListem(kelime: 'lansman'.toUpperCase(), KelimeAnlami: 'Tanıtım'),
    YapiciListem(kelime: 'literatür'.toUpperCase(), KelimeAnlami: 'Edebiyat,kaynak,yazın'),
  ];

}

class MHarfiKelimeVeAnlami{
  List<YapiciListem>m_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'makro'.toUpperCase(), KelimeAnlami: 'Büyük, geniş'),
    YapiciListem(kelime: 'malayani'.toUpperCase(), KelimeAnlami: 'Boş ve yararsız, saçma'),
    YapiciListem(kelime: 'mamafih'.toUpperCase(), KelimeAnlami: 'Ama,ancak'),
    YapiciListem(kelime: 'mantalite'.toUpperCase(), KelimeAnlami: 'Anlayış, zihniyet'),
    YapiciListem(kelime: 'marjinal'.toUpperCase(), KelimeAnlami: 'Aykırı, sıra dışı'),
    YapiciListem(kelime: 'markaj'.toUpperCase(), KelimeAnlami: 'Tutma,gölgeleme'),
    YapiciListem(kelime: 'maruzat'.toUpperCase(), KelimeAnlami: 'Mevki,makam veya yaş bakımından büyük birine sunulan, bildirilen dilek veya bilgi,sunuş'),
    YapiciListem(kelime: 'mecmua'.toUpperCase(), KelimeAnlami: 'Dergi'),
    YapiciListem(kelime: 'menfi'.toUpperCase(), KelimeAnlami: 'Olumsuz, negatif'),
    YapiciListem(kelime: 'mental'.toUpperCase(), KelimeAnlami: 'Zihinsel'),
    YapiciListem(kelime: 'meta'.toUpperCase(), KelimeAnlami: 'Mal,ticaret malı, sermaye'),
    YapiciListem(kelime: 'metafor'.toUpperCase(), KelimeAnlami: 'Mecaz.Bir şeyi başka şey ile benzetmeye, kıyaslamaya, anlatmaya yarayan mecazlar'),
    YapiciListem(kelime: 'metamorfoz'.toUpperCase(), KelimeAnlami: 'Başkalaşma'),
    YapiciListem(kelime: 'metropol'.toUpperCase(), KelimeAnlami: 'Büyükşehir, anakent'),
    YapiciListem(kelime: 'mevzubahis'.toUpperCase(), KelimeAnlami: 'Söz konusu ile benzer anlamda'),
    YapiciListem(kelime: 'mezkur'.toUpperCase(), KelimeAnlami: 'Adı geçen,sözü edilen'),
    YapiciListem(kelime: 'mikro'.toUpperCase(), KelimeAnlami: 'Küçük, dar'),
    YapiciListem(kelime: 'milenyum'.toUpperCase(), KelimeAnlami: 'Binyıl'),
    YapiciListem(kelime: 'minval'.toUpperCase(), KelimeAnlami: 'Biçim,yol,tarz'),
    YapiciListem(kelime: 'misyon'.toUpperCase(), KelimeAnlami: 'Özel görev'),
    YapiciListem(kelime: 'monoton'.toUpperCase(), KelimeAnlami: 'Tekdüze,sıkıcı'),
    YapiciListem(kelime: 'motivasyon'.toUpperCase(), KelimeAnlami: 'İsteklendirme, güdüleme'),
    YapiciListem(kelime: 'motive'.toUpperCase(), KelimeAnlami: 'İstek'),
    YapiciListem(kelime: 'motto'.toUpperCase(), KelimeAnlami: 'Slogan, özdeyiş'),
    YapiciListem(kelime: 'mönü'.toUpperCase(), KelimeAnlami: 'Menü'),
    YapiciListem(kelime: 'muallak'.toUpperCase(), KelimeAnlami: 'Asılı, sonuca bağlanmamış, sürüncemede kalmış'),
    YapiciListem(kelime: 'muamma'.toUpperCase(), KelimeAnlami: 'Anlaşılmayan, bilinmeyen şey, bilmece'),
    YapiciListem(kelime: 'muazzam'.toUpperCase(), KelimeAnlami: 'Çok büyük, çok iri, koskoca'),
    YapiciListem(kelime: 'muğlak'.toUpperCase(), KelimeAnlami: 'Anlaşılması güç'),
    YapiciListem(kelime: 'muhammen'.toUpperCase(), KelimeAnlami: 'Oranlanan, tahmin edilen'),
    YapiciListem(kelime: 'mutedil'.toUpperCase(), KelimeAnlami: 'Ilımlı'),
    YapiciListem(kelime: 'mutlak'.toUpperCase(), KelimeAnlami: 'Kendi başına var olan,hiçbir şeye bağlı olmayan,bağımsız,saltık,salt,arı'),
    YapiciListem(kelime: 'mübalağa'.toUpperCase(), KelimeAnlami: 'Abartma'),
    YapiciListem(kelime: 'mükellef'.toUpperCase(), KelimeAnlami: 'Sorumlu, vergi yükümlüsü'),
    YapiciListem(kelime: 'mülahaza'.toUpperCase(), KelimeAnlami: 'Düşünce'),
    YapiciListem(kelime: 'mülemma'.toUpperCase(), KelimeAnlami: 'Alaca renkli, renk renk. Bulaşmış, sıvanmış'),
    YapiciListem(kelime: 'müspet'.toUpperCase(), KelimeAnlami:'Olumlu, pozitif'),
    YapiciListem(kelime: 'müsterih'.toUpperCase(), KelimeAnlami: 'Bütün kaygılardan kurtulup gönlü rahata kavuşan,içi rahat olan'),
    YapiciListem(kelime: 'müstesna'.toUpperCase(), KelimeAnlami: 'Dışında,ayrı,hariç tutularak'),
    YapiciListem(kelime: 'mütebessim'.toUpperCase(), KelimeAnlami: 'Gülümseyen güleç'),
    YapiciListem(kelime: 'mütedeyyin'.toUpperCase(), KelimeAnlami: 'Dindar'),
    YapiciListem(kelime: 'müteessir'.toUpperCase(), KelimeAnlami: 'Üzüntülü'),
    YapiciListem(kelime: 'mütemadiyen'.toUpperCase(), KelimeAnlami: 'Ara vermeden,sürekli olarak'),
  ];

}

class NHarfiKelimeVeAnlami{
  List<YapiciListem>n_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'naçizane'.toUpperCase(), KelimeAnlami: 'Önemsiz, değersiz'),
    YapiciListem(kelime: 'namütenahi'.toUpperCase(), KelimeAnlami: 'Sonsuz,ucu bucağı olmayan bir biçimde'),
    YapiciListem(kelime: 'natürel'.toUpperCase(), KelimeAnlami: 'Doğal'),
    YapiciListem(kelime: 'nitekim'.toUpperCase(), KelimeAnlami: 'Sonuç olarak'),
    YapiciListem(kelime: 'norm'.toUpperCase(), KelimeAnlami: 'Kural olarak benimsenmiş'),
    YapiciListem(kelime: 'nüans'.toUpperCase(), KelimeAnlami: 'İnce ayrım, ayırtı'),
    YapiciListem(kelime: 'nükte'.toUpperCase(), KelimeAnlami: 'İnce anlamlı söz, düşündürücü espri'),
  ];

}

class OarfiKelimeVeAnlami{
  List<YapiciListem>o_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'objektif'.toUpperCase(), KelimeAnlami: 'Nesnel, tarafsız'),
    YapiciListem(kelime: 'obsesif'.toUpperCase(), KelimeAnlami: 'Takıntılı'),
    YapiciListem(kelime: 'ofansif'.toUpperCase(), KelimeAnlami: 'Atak yapmaya dayalı'),
    YapiciListem(kelime: 'olgu'.toUpperCase(), KelimeAnlami: 'Birtakım olayların dayandığı sebep veya bu sebeplerin yol açtığı sonuç, vakıa'),
    YapiciListem(kelime: 'oportünist'.toUpperCase(), KelimeAnlami: 'Fırsatçı'),
    YapiciListem(kelime: 'opsiyonel'.toUpperCase(), KelimeAnlami: 'Seçmeli, isteğe bağlı'),
    YapiciListem(kelime: 'optimist'.toUpperCase(), KelimeAnlami: 'İyimser'),
    YapiciListem(kelime: 'optimizasyon'.toUpperCase(), KelimeAnlami: 'En iyi duruma getirmek'),
    YapiciListem(kelime: 'optimum'.toUpperCase(), KelimeAnlami: 'En elverişli, en iyi olan'),
    YapiciListem(kelime: 'orijin'.toUpperCase(), KelimeAnlami: 'Köken,başlangıç,kaynak,soy,sop'),
    YapiciListem(kelime: 'oryantasyon'.toUpperCase(), KelimeAnlami: 'Yönlendirme.Uyumlanma.Eğitme'),
    YapiciListem(kelime: 'otantik'.toUpperCase(), KelimeAnlami: 'Eskiden beri mevcut olan özelliklerini taşıyan'),
    YapiciListem(kelime: 'otokritik'.toUpperCase(), KelimeAnlami: 'Öz(kendini)eleştiri'),
  ];
}

class OoHarfiKelimeVeAnlami{ //öharfi
  List<YapiciListem>oo_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'öngörü'.toUpperCase(), KelimeAnlami: 'Bir işin ilerisini kestirme veya bir işin nasıl bir yol alacağını önceden anlayabilme'),
    YapiciListem(kelime: 'öykünmek'.toUpperCase(), KelimeAnlami: 'Birinin yaptığı gibi yapmak,birine veya bir şeye benzemeye çalışmak,taklit etmek'),
    YapiciListem(kelime: 'özgün'.toUpperCase(), KelimeAnlami: 'Yalnız kendine özgü bir nitelik taşıyan,orijinal'),
  ];
}

class PHarfiKelimeVeAnlami{
  List<YapiciListem>p_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'paradigma'.toUpperCase(), KelimeAnlami: 'Değerler dizisi, dizi'),
    YapiciListem(kelime: 'paradoks'.toUpperCase(), KelimeAnlami: 'Çelişki, aykırı düşünce'),
    YapiciListem(kelime: 'parametre'.toUpperCase(), KelimeAnlami: 'Değişken'),
    YapiciListem(kelime: 'partikül'.toUpperCase(), KelimeAnlami: 'Parçacık'),
    YapiciListem(kelime: 'pejmürde'.toUpperCase(), KelimeAnlami: 'Eski püskü, dağınık, perişan'),
    YapiciListem(kelime: 'periyodik'.toUpperCase(), KelimeAnlami: 'Süreli, dönemli'),
    YapiciListem(kelime: 'periyot'.toUpperCase(), KelimeAnlami: 'Süreli'),
    YapiciListem(kelime: 'perküsyon'.toUpperCase(), KelimeAnlami: 'Vurmalı çalgı'),
    YapiciListem(kelime: 'perspektif'.toUpperCase(), KelimeAnlami: 'Bakış açısı'),
    YapiciListem(kelime: 'plankton'.toUpperCase(), KelimeAnlami: 'Sularda yaşayan mikroskobik canlılar'),
    YapiciListem(kelime: 'platform'.toUpperCase(), KelimeAnlami: 'Alan'),
    YapiciListem(kelime: 'plaza'.toUpperCase(), KelimeAnlami: 'İş merkezi'),
    YapiciListem(kelime: 'polemik'.toUpperCase(), KelimeAnlami: 'Tartışma'),
    YapiciListem(kelime: 'potansiyel'.toUpperCase(), KelimeAnlami:'Gizli kalmış,henüz varlığı ortaya çıkmamış olan,gizil.Gelecekte oluşması,gelişmesi mümkün olan'),
    YapiciListem(kelime: 'pragmatik'.toUpperCase(), KelimeAnlami: 'Yararcı, faydacı, çıkarcı, menfaatçi'),
    YapiciListem(kelime: 'prensip'.toUpperCase(), KelimeAnlami: 'İlke'),
    YapiciListem(kelime: 'prezantabl'.toUpperCase(), KelimeAnlami: 'Sunulabilir durumda olan.Derli toplu,düzenli. Olumlu özellikleri bir arada bulunduran'),
    YapiciListem(kelime: 'prezantasyon'.toUpperCase(), KelimeAnlami: 'Sunum,tanıtma,takdim etme'),
    YapiciListem(kelime: 'profil'.toUpperCase(), KelimeAnlami: 'Kimlik'),
    YapiciListem(kelime: 'prosedür'.toUpperCase(), KelimeAnlami: 'İşlem.Yöntem'),
    YapiciListem(kelime: 'proses'.toUpperCase(), KelimeAnlami: 'Süreç'),
    YapiciListem(kelime: 'prototip'.toUpperCase(), KelimeAnlami: 'İlk örnek'),
    YapiciListem(kelime: 'provoke'.toUpperCase(), KelimeAnlami: 'Kışkırtma'),
    YapiciListem(kelime: 'prömiyer'.toUpperCase(), KelimeAnlami: 'İlk gösteri'),
  ];

}

class RHarfiKelimeVeAnlami{
  List<YapiciListem>r_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'rantabl'.toUpperCase(), KelimeAnlami: 'Gelir getiren,kâr sağlayan,verimli,getirimli'),
    YapiciListem(kelime: 'rasyonel'.toUpperCase(), KelimeAnlami: 'Akılcı'),
    YapiciListem(kelime: 'reaksiyon'.toUpperCase(), KelimeAnlami: 'Tepkime'),
    YapiciListem(kelime: 'realite'.toUpperCase(), KelimeAnlami: 'Gerçeklik'),
    YapiciListem(kelime: 'reel'.toUpperCase(), KelimeAnlami: 'Gerçek'),
    YapiciListem(kelime: 'referans'.toUpperCase(), KelimeAnlami:'Kaynak,kaynak gösterme'),
    YapiciListem(kelime: 'rekreasyon'.toUpperCase(), KelimeAnlami:'Eğlence ve spor amacıyla yapılan etkinlik,bu etkinliklerin yapılması için hazırlanan yer'),
    YapiciListem(kelime: 'retorik'.toUpperCase(), KelimeAnlami: 'Güzel söz söyleme,hitabet sanatı'),
    YapiciListem(kelime: 'retrospektif'.toUpperCase(), KelimeAnlami: 'Geriye dönük, geçmişi ele alan'),
    YapiciListem(kelime: 'reverans'.toUpperCase(), KelimeAnlami:'Sahnede selam vermek için dizleri kırarak yapılan hareket'),
    YapiciListem(kelime: 'revize'.toUpperCase(), KelimeAnlami: 'Yenileme,düzeltme'),
    YapiciListem(kelime: 'rezidans'.toUpperCase(), KelimeAnlami: 'Konut'),
  ];

}


class SHarfiKelimeVeAnlami{
  List<YapiciListem>s_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'safsata'.toUpperCase(), KelimeAnlami:'Gereksiz söz'),
    YapiciListem(kelime: 'salık vermek'.toUpperCase(), KelimeAnlami:'Tavsiye etmek,önermek'),
    YapiciListem(kelime: 'salt'.toUpperCase(), KelimeAnlami: 'İçinde yabancı bir öğe bulunmayan,yabancı bir şey karışmamış,arı,mutlak'),
    YapiciListem(kelime: 'sansasyonel'.toUpperCase(), KelimeAnlami: 'Çarpıcı'),
    YapiciListem(kelime: 'sarkastik'.toUpperCase(), KelimeAnlami:'Acıtıcı bir şekilde alay eden,ironik'),
    YapiciListem(kelime: 'sav'.toUpperCase(), KelimeAnlami: 'İleri sürülerek savunulan düşünce'),
    YapiciListem(kelime: 'seans'.toUpperCase(), KelimeAnlami: 'Oturum'),
    YapiciListem(kelime: 'segment'.toUpperCase(), KelimeAnlami: 'Bölüm'),
    YapiciListem(kelime: 'seleksiyon'.toUpperCase(), KelimeAnlami: 'Seçim.Ayıklanma.Doğal seleksiyon vb.'),
    YapiciListem(kelime: 'semantik'.toUpperCase(), KelimeAnlami: 'Anlamları inceleyen bilim, anlambilim'),
    YapiciListem(kelime: 'semptom'.toUpperCase(), KelimeAnlami: 'Bulgu, belirti'),
    YapiciListem(kelime: 'senkron'.toUpperCase(), KelimeAnlami: 'Eş zamanlı,aynı anda,aynı şekilde hareketle'),
    YapiciListem(kelime: 'sentezleme'.toUpperCase(), KelimeAnlami: 'Bir araya getirme, birleştirme'),
    YapiciListem(kelime: 'serzeniş'.toUpperCase(), KelimeAnlami: 'Yakınma'),
    YapiciListem(kelime: 'sığ'.toUpperCase(), KelimeAnlami: 'Ayrıntıya inmeyen, yeterli olmayan, yüzeyde kalan'),
    YapiciListem(kelime: 'simya'.toUpperCase(), KelimeAnlami: 'Elementleri altına çevirmek isteyen bir öğreti alanı'),
    YapiciListem(kelime: 'skala'.toUpperCase(), KelimeAnlami: 'Gösterge çizelgesi'),
    YapiciListem(kelime: 'slayt'.toUpperCase(), KelimeAnlami: 'Sunu'),
    YapiciListem(kelime: 'sofistike'.toUpperCase(), KelimeAnlami: 'Karmaşık,yapmacık,yanıltıcı'),
    YapiciListem(kelime: 'son tahlilde'.toUpperCase(), KelimeAnlami: 'Sonuç olarak'),
    YapiciListem(kelime: 'söylem'.toUpperCase(), KelimeAnlami: 'Kalıplaşmış,klişeleşmiş söz,ifade,söyleyiş,telaffuz'),
    YapiciListem(kelime: 'söz konusu'.toUpperCase(), KelimeAnlami: 'Bahse konu, konu edilen'),
    YapiciListem(kelime: 'spekülatif'.toUpperCase(), KelimeAnlami: 'Kurgusal,saptırıcı,yanıltıcı'),
    YapiciListem(kelime: 'spesifik'.toUpperCase(), KelimeAnlami: 'Özellikli, yalnız bir türe özgü olan'),
    YapiciListem(kelime: 'spesiyal'.toUpperCase(), KelimeAnlami: 'Özel'),
    YapiciListem(kelime: 'sponsor'.toUpperCase(), KelimeAnlami: 'Destekleyici'),
    YapiciListem(kelime: 'spontane'.toUpperCase(), KelimeAnlami: 'Anlık.Kendiliğinden.Doğaçlama'),
    YapiciListem(kelime: 'stabil'.toUpperCase(), KelimeAnlami: 'İstikrarlı, sabit'),
    YapiciListem(kelime: 'stabilize'.toUpperCase(), KelimeAnlami: 'İstikrarlı.Kararlı bir duruma getirmek,sağlamlaştırmak'),
    YapiciListem(kelime: 'statüko'.toUpperCase(), KelimeAnlami: 'Süregelen düzenin korunması durumu.Yürürlükteki antlaşmaya göre olması gereken veya süregelen durum'),
    YapiciListem(kelime: 'stokastik'.toUpperCase(), KelimeAnlami:'Değişken, rastlantısal'),
    YapiciListem(kelime: 'suistimal'.toUpperCase(), KelimeAnlami: 'Görev, yetki vb.ni kötüye kullanma'),
    YapiciListem(kelime: 'sularında'.toUpperCase(), KelimeAnlami: 'Saat gibi kelimelerle birlikte yaklaşık zaman bildiren bir söz, raddelerinde, civarında'),
    YapiciListem(kelime: 'sübjektif'.toUpperCase(), KelimeAnlami: 'Bireyin düşünce ve duygularına dayanan, öznel'),
    YapiciListem(kelime: 'sübvanse'.toUpperCase(), KelimeAnlami: 'Para yardımı yapmak, desteklemek'),
    YapiciListem(kelime: 'süje'.toUpperCase(), KelimeAnlami: 'Konu, özne'),
    YapiciListem(kelime: 'sürrealite'.toUpperCase(), KelimeAnlami: 'Gerçeküstü'),
    YapiciListem(kelime: 'sürrealizm'.toUpperCase(), KelimeAnlami: 'Gerçeküstücülük'),
    YapiciListem(kelime: 'sürünceme'.toUpperCase(), KelimeAnlami: 'Bir işin sonuçlanıncaya kadar boş yere uğradığı gecikmelerin tümü'),
  ];
}

class SsHarfiKelimeVeAnlami{ //ş harfi için
  List<YapiciListem>ss_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'şayet'.toUpperCase(), KelimeAnlami: 'Eğer'),
    YapiciListem(kelime: 'şerh'.toUpperCase(), KelimeAnlami: 'Açma, ayırma'),
    YapiciListem(kelime: 'şöyle ki'.toUpperCase(), KelimeAnlami: 'Açıklama cümlesi başlangıcında söylenir'),
  ];

}
class THarfiKelimeVeAnlami{
  List<YapiciListem>t_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'takdire şayan'.toUpperCase(), KelimeAnlami: 'Takdir edilmeyi hak eden'),
    YapiciListem(kelime: 'temaşa'.toUpperCase(), KelimeAnlami:'Hoşlanarak bakma, seyretme. Seyredilecek görüntü, görülmeye değer şey'),
    YapiciListem(kelime: 'tenzih'.toUpperCase(), KelimeAnlami: 'Kusur kondurmama'),
    YapiciListem(kelime: 'teori'.toUpperCase(), KelimeAnlami: 'Kuram, nazariye'),
    YapiciListem(kelime: 'terminoloji'.toUpperCase(), KelimeAnlami: 'Terimler dizgesi, terim bilimi'),
    YapiciListem(kelime: 'tevatür'.toUpperCase(), KelimeAnlami:'Bir haberin ağızdan ağıza yayılması, yaygın söylenti'),
    YapiciListem(kelime: 'teveccüh'.toUpperCase(), KelimeAnlami: 'Bir yana doğru yönelme,yüzünü,çevirme.Güler yüz gösterme,yakınlık duyma,hoşlanma'),
    YapiciListem(kelime: 'tezat'.toUpperCase(), KelimeAnlami: 'Çelişki, karşıtlık'),
    YapiciListem(kelime: 'tını'.toUpperCase(), KelimeAnlami: 'Söyleniş biçimi,ses özelliği,vurgu'),
    YapiciListem(kelime: 'trajedi'.toUpperCase(), KelimeAnlami:'Facia.Acıklı sonuçlarla bağlanan bir tür tiyatro eseri,ağlatı'),
    YapiciListem(kelime: 'trajikomik'.toUpperCase(), KelimeAnlami:'Hem acıklı hem güldürücü özelliği olan olay ya da durum'),
    YapiciListem(kelime: 'trend'.toUpperCase(), KelimeAnlami: 'Eğilim'),
    YapiciListem(kelime: 'türbülans'.toUpperCase(), KelimeAnlami: 'Bir sıvının ya da gazın hareket halindeki düzensizliği,çalkantı'),
  ];

}

class UHarfiKelimeVeAnlami{
  List<YapiciListem>u_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'Un'.toUpperCase(), KelimeAnlami: 'Buğday, mısır gibi bitkilerden elde edilen gıdadır'),
    YapiciListem(kelime: 'Uç'.toUpperCase(), KelimeAnlami: 'Herhangi bir şey ya da yerin en son ve ya en baş kısmıdır'),
    YapiciListem(kelime: 'Ur'.toUpperCase(), KelimeAnlami: 'Normal gidişatta görülmemesi gereken zararlı oluşum'),
    YapiciListem(kelime: 'Uçak'.toUpperCase(), KelimeAnlami: 'Gökyüzüne havalanabilen insan yapımı araçtır'),
    YapiciListem(kelime: 'Ufak'.toUpperCase(), KelimeAnlami: 'Küçük ya da minik gibi benzer anlamları da olan, büyüğün zıttı ifade'),
    YapiciListem(kelime: 'Ulus'.toUpperCase(), KelimeAnlami: 'Herhangi bir topluluk ya da devletin temsilcisi olan millet'),
    YapiciListem(kelime: 'Umut'.toUpperCase(), KelimeAnlami: 'Şimdi, gelecek ya da herhangi bir düşünce konusunda olumlu olma hali'),
    YapiciListem(kelime: 'Uğur'.toUpperCase(), KelimeAnlami: 'Kişiye ya da genel anlamda her şeye iyi gelecek olan şartları çekme hali'),
    YapiciListem(kelime: 'Utanç'.toUpperCase(), KelimeAnlami: 'Bir konu ve ya davranışın hatalı olması durumunda yaşanılan üzücü duygu'),
    YapiciListem(kelime: 'Uluma'.toUpperCase(), KelimeAnlami: 'Daha çok köpek, kurt gibi hayvanlarda görülen tepki'),
    YapiciListem(kelime: 'Uygar'.toUpperCase(), KelimeAnlami: 'Medeni anlamda şimdi ya da gelecekte olma durumu'),
    YapiciListem(kelime: 'Unvan'.toUpperCase(), KelimeAnlami: 'Bir kişi ya da iş pozisyonuna verilen ad'),
    YapiciListem(kelime: 'Uçarı'.toUpperCase(), KelimeAnlami: 'Genelde bir sıfat olarak kullanılır. Hareketli, aklı başında olmama olarak tanımlanır'),
    YapiciListem(kelime: 'Ulusal'.toUpperCase(), KelimeAnlami: 'Milli olan her şey'),
    YapiciListem(kelime: 'Uçurtma'.toUpperCase(), KelimeAnlami: 'Bazı malzemeler kullanılarak uçması sağlanan oyun aleti'),
    YapiciListem(kelime: 'Ulaşım'.toUpperCase(), KelimeAnlami: 'Bir yerden bir yere gidilmesini sağlama'),
    YapiciListem(kelime: 'Ucuz'.toUpperCase(), KelimeAnlami: 'Pahalı olmayan ve ya fiyatı uygun olan'),
    YapiciListem(kelime: 'Uzak'.toUpperCase(), KelimeAnlami: 'Yakının zıttı şeklinde kullanılan kelimedir'),
    YapiciListem(kelime: 'Uzay'.toUpperCase(), KelimeAnlami: 'Dünyanın da içinde olduğu evren'),
    YapiciListem(kelime: 'Ufunet'.toUpperCase(), KelimeAnlami: 'Fenalaşma ya da sıkıntılı olma durumu'),
    YapiciListem(kelime: 'Uyuşturucu'.toUpperCase(), KelimeAnlami: 'Yatıştırıcı etkisi olan bağımlılık yapıcı zararlı madde'),
  ];

}

class UUHarfiKelimeVeAnlami{ //ü harfi için
  List<YapiciListem>uu_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'ücret'.toUpperCase(), KelimeAnlami: 'İş gücünün karşılığı olan para veya mal'),
    YapiciListem(kelime: 'Üslup'.toUpperCase(), KelimeAnlami: ' Anlatma, oluş, deyiş veya yapış biçimi, tarz'),
    YapiciListem(kelime: 'Üreme'.toUpperCase(), KelimeAnlami: 'Canlıların cinsel hücrelerinin birleşmesinden ortaya çıkan tohumla veya doğrudan doğruya oluşturdukları sporlarla çoğalmaları, tenasül'),
    YapiciListem(kelime: 'Üzünç'.toUpperCase(), KelimeAnlami: 'Üzüntü'),
    YapiciListem(kelime: 'Ündeş'.toUpperCase(), KelimeAnlami: ' Benzer sesle biten söz veya cümle'),
    YapiciListem(kelime: 'ütopik'.toUpperCase(), KelimeAnlami: 'Ütopyaya dayanan, imkansız'),
    YapiciListem(kelime: 'ütopya'.toUpperCase(), KelimeAnlami: 'Gerçekleştirilmesi imkânsız tasarı veya düşünce'),
  ];



}

class VHarfiKelimeVeAnlami{
  List<YapiciListem>v_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'varyasyon'.toUpperCase(), KelimeAnlami: 'Değişim biçim, değişim, çeşitleme'),
    YapiciListem(kelime: 'veciz'.toUpperCase(), KelimeAnlami: 'Kısa ve etkili söz'),
    YapiciListem(kelime: 'veçhe'.toUpperCase(), KelimeAnlami: 'Yön'),
    YapiciListem(kelime: 'velev ki'.toUpperCase(), KelimeAnlami: 'İster,isterse,olsa da,kaldı ki,hatta,"-hadi diyelim öyle oldu"anlamlarında kullanılır'),
    YapiciListem(kelime: 'vesselam'.toUpperCase(), KelimeAnlami: 'İşte o kadar,son söz şudur,kısacası" anlamlarında kullanılan bir söz'),
  ];
}

class YHarfiKelimeVeAnlami{
  List<YapiciListem>y_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'yadsımak'.toUpperCase(), KelimeAnlami: 'İlgili, bağlı bulunduğu bir şeye yabancı kalmak'),
    YapiciListem(kelime: 'yakamoz'.toUpperCase(), KelimeAnlami: 'Denizdeki parıltı'),
    YapiciListem(kelime: 'yazın'.toUpperCase(), KelimeAnlami: 'Edebiyat'),
    YapiciListem(kelime: 'yordam'.toUpperCase(), KelimeAnlami: 'Yatkınlık,alışkanlık,yeti,yetenek,meleke Kılavuz,yöntem,bir şeyin aracılığı.El yordamıyla'),
  ];


}

class ZHarfiKelimeVeAnlami{
  List<YapiciListem>z_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'zabıt'.toUpperCase(), KelimeAnlami: 'Tutanak'),
    YapiciListem(kelime: 'zahir'.toUpperCase(), KelimeAnlami: 'Kuşkusuz, elbette, şüphesiz'),
    YapiciListem(kelime: 'zamir'.toUpperCase(), KelimeAnlami: 'Kişi,dönüşlülük,gösterme,soru ve belirsizlik kavramları vererek varlıkların yerini tutan söz, adıl'),
    YapiciListem(kelime: 'Zarta'.toUpperCase(), KelimeAnlami: 'Yellenme,Osuruk'),
    YapiciListem(kelime: 'Zebun'.toUpperCase(), KelimeAnlami: 'Güçsüz, zayıf, âciz'),
    YapiciListem(kelime: 'zehap'.toUpperCase(), KelimeAnlami: 'Sanma, sanı, zannetme'),
    YapiciListem(kelime: 'zaruret'.toUpperCase(), KelimeAnlami: 'Zorunluluk, gereklilik'),
    YapiciListem(kelime: 'zikretme'.toUpperCase(), KelimeAnlami: 'Adını söylemek, anmak'),
  ];

}

class unlemHarfiKelimeVeAnlami{
  List<YapiciListem>unlem_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'Ünlem İşrateri'.toUpperCase(), KelimeAnlami: 'sevinme,kızma,korku,mutluluk,şaşkınlık gibi aşırı heyecan bildiren ifadelerin sonuna konur.'),
  ];

}
class SorusaretiHarfiKelimeVeAnlami{
  List<YapiciListem>soruis_harfi_kelime_ve_Anlami=[
    YapiciListem(kelime: 'soru işareti', KelimeAnlami: 'Soru işareti duygu ve düşüncelerin yazı yolu ile doğru ve net bir şekilde karşı tarafa aktarılabilmesi için kullanılan noktalama işaretlerinden biridir')
  ];

}
