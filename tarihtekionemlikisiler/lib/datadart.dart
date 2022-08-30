class OnemliKisilerVeHayatlari {
  String? adi;
  String? meslek;
  String? Resim;
  String? Hayati;

  OnemliKisilerVeHayatlari({
    required this.adi,
    required this.meslek,
    required this.Resim,
    required this.Hayati,
  });
}

List<OnemliKisilerVeHayatlari> BilgileriYErlestir = [
  OnemliKisilerVeHayatlari(
      adi: 'Aristoteles',
      meslek: 'Filozof',
      Resim:
          'https://img-s1.onedio.com/id-5f6f4d85e123d2a3799f7750/rev-0/w-635/f-jpg/s-9a16ef3147b598343493864ee57badecced3a793.jpg',
      Hayati:
          "Aristoteles, M. Ö. 384 yılında doğan Yunan asıllı bir filozoftur. Ayrıca, şimdiye kadar yaşamış en etkili insandır."
          " Öğretileri ve teorileri din, konum, cinsiyet, sınıf veya ırktan bağımsız olarak küresel ölçekte önemli kabul edilir. "
          "En ünlü öğrencisi Büyük İskender'in fetihleri yoluyla Afrika"
          " Asya ve Orta Doğu'ya göç etmiştir. Her kıtada büyük saygı ve popülariteye sahip olan Aristoteles’e ilk öğretmen'"
          " olarak atıfta bulunurlar. Kendisi Yahudilik, Hıristiyanlık ve İslam'da saygı gören çok az tarihi şahsiyetten biridir."),
  OnemliKisilerVeHayatlari(
      adi: 'Leonardo da Vinci',
      meslek: 'Mucit',
      Resim:
          'https://img-s1.onedio.com/id-5f6f5d0a6f7551ae223c7860/rev-0/w-635/f-jpg/s-bf439bf5e528e018c03e87342d7f47629f872fa4.jpg',
      Hayati:
          'Leonardo da Vinci şüphesiz ki zamanının en yetenekli adamıydı. Gerçek mesleğini tanımlamak neredeyse imkansızdır; '
          'çünkü yaşamı boyunca heykelden resme, mimariden müziğe, matematikten anatomiye ve mühendislikten '
          'jeolojiye gibi birçok fazla alanda ustalaşmış bir dehadır. Dönemin önemli filozoflarından olan Vinci’nin çeşitli bilgi alanlarına'
          ' yönelmesi ve o alanlarda ustalaşması sebebiyle '
          'deha teriminin arketipi olarak kabul edilir. Birçok tarihçi,'
          ' onun gibi zihin ve kişilik yapısına sahip bir mucidin binlerce yılda bir geldiğine inanır.'),
  OnemliKisilerVeHayatlari(
      adi: 'Julius Caesar',
      meslek: 'Politikacı',
      Resim:
          'https://img-s2.onedio.com/id-5f6f5c40d1ad411f254b5011/rev-0/w-635/f-jpg/s-138704f4694f73e3aa80f2a3b8e64346b34115aa.jpg',
      Hayati:
          "Julius Caesar, Roma tarihinin en önemli figürü ve en ünlü diktatörüydü."
          " Roma’nın hükümet biçimini değiştiren büyük bir stratejist ve politik bir liderdi. "
          "Fetihleri Avrupa ve Batı kültürünün gelişimi için temel oluşturdu."
          " Aristokrat bir kökene sahip olmasına rağmen en düşük sosyal sınıflar ve Roma'nın fakirleri için savaştı,"
          " ki bu onun cinayetinin de ana sebebi olmuştur."),
  OnemliKisilerVeHayatlari(
      adi: 'Arşimet',
      meslek: 'Matematikçi',
      Resim:
          'https://img-s1.onedio.com/id-5f6f5c654813cee422b2e4bf/rev-0/w-635/f-jpg/s-7eb7bcd721c2360679c26bcd848e6bad7471c6b0.jpg',
      Hayati:
          'Arşimet, Yunan bir matematikçi ve mucittir. Antik dünyanın ilk ve en büyük bilim adamı olarak kabul edilir.'
          ' Geometriye yaptığı katkılarla devrim yaratmış bu matematik dehasının yöntemleri onu takip eden her matematikçi ve mucidi etkilemiştir. '
          'Hidrostatik, statik ve manivela prensibinin temellerini atmıştır. Ayrıca bir hamamda yıkanırken,'
          ' suyun kaldırma kuvvetini bulması ile bilime en önemli katkılardan birini yapmıştır.'),
  OnemliKisilerVeHayatlari(
      adi: 'Wolfgang Amadeus Mozart',
      meslek:'Besteci',
      Resim:
          'https://img-s1.onedio.com/id-5f6f5ce23b09945225592e6f/rev-0/w-635/f-jpg/s-27905c4f433dfdde65dc36c054e30d7b2d65d8ca.jpg',
      Hayati:
          'Mozart, tarihin en ünlü çocuk dahisi olarak bilinir; beş yaşında müzik bestelemiştir.'
          ' Dönemimin en etkili ve üretken bestekarlarından biridir. Müzik tarihinin en büyük dehalarından biri olan Mozart,'
          ' sadece 35 yıllık olan ömrüne 626 eser sığdırmıştır. Onun yapıtları, senfonileri,'
          ' konçertoları, orkestraları piyanoyu ve operayı etkilemiştir ve '
          'nesiller geçse de onun hala bestekarlar üzerindeki etkisi devam etmektedir.'),
  OnemliKisilerVeHayatlari(
      adi: 'Michelangelo',
      meslek: 'Ressam',
      Resim:
          'https://www.oxxo.com.tr/ContentImages/Blog/Yasam/Heykeltiras-Michelangelo%E2%80%99nun-4-Unlu-Heykeli-heykeltiras_michelangelo_unlu_heykelleri_4-jpg_buyuk.jpg',
      Hayati:
          "Michelangelo sadece bir ressam olarak görülse de aynı zamanda mükemmel bir heykeltıraş, şair ve mimardı. Michelangelo, insan formunu her açıdan tasvir edebilmek için kadavralar üzerinde çalışmış ve Rönesans sanatına benzersiz bir etkide bulunmuştur. Bununla birlikte Rönesans’ın harikalarından biri olan ve heykelde rüştünü kanıtladığı David’i (Davud heykeli) yaratmıştır."
          " Bir diğer önemli yapıtı olan Sistine Şapeli'nin tavanına yaptığı Adem’in Yaratılışı freskidir."),
  OnemliKisilerVeHayatlari(
      adi: 'Galileo Galilei',
      meslek: 'Astronom',
      Resim:
          'https://img-s1.onedio.com/id-5f6f5eca3b09945225592ede/rev-0/w-635/f-jpg/s-ccc3ba8742f99048354bd0ddf75b094365620138.jpg',
      Hayati:
          "“Modern fiziğin babası” olarak adlandırılan Galileo Galilei büyük bir bilim adamı ve astronomdan daha fazlasıydı;"
          " o resmen bir asiydi. Dünya'nın güneş sisteminin merkezinde nispeten sabit bir Güneş etrafında döndüğü teorisini popülerleştirdi."
          " Ona sık sık karşı çıkan astronomlar ve Roma engizisyonu güneş merkezli bir sistemin gözlemlenmediği için mümkün olmadığını savunmuş ve bunun sonucunda Galileo’ya ev hapsi verilmişti."
          " Ev hapsinde en önemli çalışmalarından birini; İki Yeni Bilim’i yazmıştır."),
  OnemliKisilerVeHayatlari(
      adi: 'Isaac Newton',
      meslek: 'Fizikçi',
      Resim:
          'https://img-s1.onedio.com/id-5f6f5df84486ba7d229af60d/rev-0/w-635/f-jpg/s-a875737587985b8ba77f3c11e4da5358c85198f2.jpg',
      Hayati:
          'İngiliz bilim adamı Isaac Newton, küresel olarak bilimsel devrimin önemli bir figürü olarak kabul edilir ve keşifleriyle Einstein da dahil olmak üzere diğer birçok büyük bilim insanını etkilemiştir. Doğa Felsefesinin Matematiksel İlkeleri (Philosophiæ Naturalis Principia Mathematica) kitabı, klasik mekaniğin temellerini atan önemli bilimsel kitaplardan biridir. Newton, tüm zamanların en iyi fizikçilerinden biri olarak kabul edilir. (Einsthein’den sonra)'),

  OnemliKisilerVeHayatlari(adi: 'Heredot', meslek: 'Tarihçi',
      Resim: 'https://img-s3.onedio.com/id-5f6f5effc3a2755d25721b82/rev-0/w-635/f-jpg/s-d9b23958e2b2ec5b5793684325bd2ea9ec9b493b.jpg',
      Hayati: "“Tarihin Babası” olarak adlandırılan Herodot, Halikarnaslı Antik Yunan tarihçisi ve yazarıdır. Materyallerini tutarlı ve metodik olarak bir araya getirip bunları tarihi bir yazıma organize eden ve raporlayan ilk tarihçidir. Herodot’un en bilinen eseri Pers-Yunan savaşlarını anlattığı Herodot Tarihi’dir."),

  OnemliKisilerVeHayatlari(adi: 'Sigmund Freud', meslek: 'Psikolog',
      Resim: 'https://img-s3.onedio.com/id-5f68c37635a3931d47dca178/rev-0/w-635/f-jpg/s-d2ecaa61676a834c6d55e82cea049161be4fecc9.jpg',
      Hayati: "Sigmund Freud, psikanalizin kurucusu ve psikolojinin akademik ve uygulamalı disiplininin en ünlü figürü olan ünlü bir Avusturyalı nörologdur. (Psikanaliz; hasta ile diyalog kurarak psikopatolojik vakaları tedavi etmekte kullanılan bir yöntemdir.) Döneminde ve hala bugün bile teorilerine tartışmalı yaklaşılmakta veya teorilerinin önemi savunulmaktadır. Özellikle Oedipus kompleksi teorisine olan tartışmalara rağmen, psikolojik ve psikoterapötik görüşlerinin ve ilgili tekniklerin çoğu, psikoterapi ve genel psikiyatri içinde bugüne kadar popülerliğini devam ettirmiştir."),
  OnemliKisilerVeHayatlari(adi: 'Hipokrat', meslek: 'Hekim',
      Resim: 'https://iasbh.tmgrup.com.tr/a45c82/366/218/0/0/275/164?u=https://isbh.tmgrup.com.tr/sbh/2018/01/18/hipokrat-kimdir--1516267601354.jpg',
      Hayati: "“Tıbbın babası” olarak bilinen Hipokrat, yöntemleri ve öğretileri ile modern tıbbın temelini atmıştır. Hipokrat’a göre tıbbın ilk kuralı “Primum non nocere” (Önce zarar verme) ilkesidir. Tıpta ve tarihte öneminin büyük olduğu, hala hekim ve sağlık çalışanlarının mesleklerine başlamadan önce ettiği ve adının verdiği yemin (Hipokrat Yemini) onun veya öğrencilerinin bir yazımıdır."),

  OnemliKisilerVeHayatlari(adi: 'Charles Darwin', meslek: 'Biyolog',
      Resim: 'https://img-s1.onedio.com/id-5f6f604fc3a2755d25721b93/rev-0/w-635/f-jpg/s-571a43842d66fdb10ae4e0be8c9adadd69852719.jpg',
      Hayati: 'Charles Robert Darwin, yaşamı boyunca çeşitli bilimler okuyan bir İngiliz biyolog ve doğa tarihçisiydi. Modern evrimsel çalışmalarının temeli olan Doğal seleksiyon yoluyla evrim teorisiydi. Darwin’in düşünceleri üzerinde önemli bir etkisi agnostik olmasıydı ve zamanının katı ve dini Viktorya toplumuna İncil’den farklı bir teori öne sürmesi alışılmamış bir durum ortaya çıkarmıştır.'),

  OnemliKisilerVeHayatlari(adi: 'Che Guevara', meslek: 'Sosyal Aktivist',
      Resim: 'https://img-s1.onedio.com/id-5f6f62616733c3b72679ae3d/rev-0/w-635/f-jpg/s-5586dba4d8fd602428b5c290d4850699c30b9ca6.jpg',
      Hayati: 'Che Guevara, Arjantinli doktor, Marksist-Leninist siyasetçi ve devrimcidir. Tıp eğitimi sırasında gözlemlediği yoksulluğun devrim ile kaldırılabileceğine inanarak Marksizm’i inceledi. Küba yönetimini ele geçiren Fidel Castro’nun sağ kolu oldu. Diğer ülkelerdeki devrimci hareketlere katılmak için Küba’dan ayrıldı. Önce Kongo’ya oradan da Bolivya’ya gitti ve Bolivya Ordusu elindeyken öldürüldü. Ölümünden sonra Che, dünya üzerinde sosyalist devrimci hareketlerin öncüsü ve sembolü haline gelmiştir.'),

  OnemliKisilerVeHayatlari(adi: 'Louis Pasteur', meslek: 'Kimyager',
      Resim: 'https://cdn.evrimagaci.org/4JPXJ5fO6ZLfHsroFlw5W0dG-S8=/evrimagaci.org%2Fpublic%2Fcontent_media%2Fbb3457a79ff8f42b386667fbafd47276.jpg',
      Hayati: "“Mikrobiyolojinin babası” olarak adlandırılan Louis Pasteur, Kuduz aşısını bulan Fransız mikrobiyolog ve kimyagerdir. İnsanlığa yaptığı muazzam katkılar, hastalıkları önleme ve milyonlarca insanın hayatını kurtarma üzerine çabaları ile tarihte çok büyük etkisi olan insanlardan biridir. Adını taşıyan pastörizasyon sürecini icat etmiş ve dünya çapında milyarlarca bebeğin bakteri olmadan taze süt içerek sağlıklı büyümesine yardımcı olmuştur."),
  OnemliKisilerVeHayatlari(adi: 'Büyük İskender', meslek: 'General',
      Resim: 'https://img-s1.onedio.com/id-5f6f645b4a80c1ce230dc70e/rev-0/w-635/f-jpg/s-16d6ed18923df38bd0e16ef07491e9489ed90bb9.jpg',
      Hayati: "Büyük İskender, şimdiye kadar yaşamış en büyük askeri generallerden biridir ve ölümüne kadar savaş alanında yenilmez olarak kalmıştır. İnsanlık tarihinin önemli bir dönemi olan Helenistik Çağ’ın doğuşundan sorumludur. Adını taşıyan birçok şehir kurmuş ve onu takip eden askeri liderler için mutlak bir standart ve büyüklük ölçüsü haline gelmiştir. Büyük İskender’in adı hala ‘hakimiyet’ ile eş anlamlı olarak anılmaya devam etmektedir."),

];
