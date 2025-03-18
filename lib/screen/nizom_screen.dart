import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/widget/filled_data_widget.dart';

List nizom = [
  {
    "title": "I-Bob. Umumiy qoidalar",
    "body": [
      "1.1. “To‘p marraga” o‘yini bo‘yicha 13-14- yoshli jamolar o‘rtasida o‘tqaziladigan musobaqada Qoraqalpog‘iston Respublikasi, viloyatlar, Toshkent shaxridagi maktab o‘quvchilari ishtirok etadi.",
      "1.2. Musobaqa “To‘p marraga o‘yin qoidalari”ga ko‘ra o‘tqaziladi. ",
      "1.3. Musobaqa O‘zbekiston Respublikasining Kansitutsiyasi va qonunlariga, O‘zbekiston Respublikasi Oliy Majlis palatalarining qarorlariga, O‘zbekiston Respublikasi Prezidentining farmonlari, qarorlari va farmoishlariga, mazkur Nizomga xamda boshqa qonun xujjatlariga amal qilinadi.",
    ]
  },
  {
    "title": "II-Bob. Musobaqaning maqsad va vazifalari",
    "body": [
      "2.1. Musobaqaning maqsadlari quyidagilardan iborat Yoshlar o‘rtasida sog‘lom turmush tarzini targ‘ib qilish va bo‘sh vaqtlarini mazmunli o‘tkazish.\nYoshlarni “To‘p marraga” sport o‘yini bilan muntazam shug‘ullanishga jalb qilish; \n“To‘p marraga” sport o‘yini bilan shug‘ullanuvchi  yoshlarni o‘yin texnikasini rivojlantirish.",
      "2.2. Musobaqaning vazifalari quyidagilardan iborat\nYoshlar o‘rtasida ushbu musobaqaning g‘olibini aniqlash;\nMaktab jamoasiga munosib sportchilarni tanlash;",
    ]
  },
  {
    "title": "IV-Bob. Musobaqani o‘tqazish joyi va muddati",
    "body": [
      "4.1. “To‘p marraga” o‘yini bo‘yicha jamolarning 13-14 yoshli o‘quvchilar o‘rtasidagi maktab chempionati (shaxar, tuman) sport maktabi (maktab) majmuasi maydonida (sport zalida) chim ustida ( yog‘och, rezina qoplamali) maydonda o‘tqaziladi.",
      "4.2. Musobaqa ishtirokchilarining kelishi, mandat komissiyasi va qur’a tashlash – 2025 yil 4 avgust kuni bo‘lib o‘tadi.",
      "4.3. Musobaqa o‘tqazish vaqti 2025- yil 5 avgust kuni.",
    ]
  },
  {
    "title": "V-Bob. Musobaqa ishtirokchilari va jamoalar",
    "body": [
      "5.1. Musobaqada ishtirok etish uchun talab etilgan hujjatlarni taqdim etgan jamolarga ruxsat beriladi.",
      "5.2. Musobaqada 13-14 - yoshga to‘lgan va undan katta bo‘lmagan sportchilar qatnashadilar.",
      "5.3. Jamolar tarkibi: Xar bir jamoada 10 kishidan ko‘p bo‘lmagan, shu jumladan: 8 nafar sportchi, 2 nafar rasmoiy vakil ( 1nafar jamoa raxbari, 1 nafar murabbiy) bo‘lishi mumkin.",
      "5.4. Musobaqada ishtirok etish uchun barcha jamolar, belgilangan shaklda ariza topshirishlari kerak va ushbu arizada xar bir ko‘rsatilgan sportchi uchun tibbiy ma’lumotnoma bo‘lishi talab etiladi.",
      "5.5. Arizdan tashqari, xar bir jamoaning barcha o‘yinchilari va murabbiylari “To‘p marraga” o‘yini qoidalari bilan tanishib chiqqan bo‘lishi shart.",
      "5.6. Musobaqa ishtirokchilari quyidagilarni bajarishlari shart:\nO‘yin qoidalariga rioya qilish;\nChempionat qoidalariga rioya qilish;\nBir-birlari bilan munosabatlarda yoki boshqa shaxslar bilan munosabatlarda ma’naviy-axloqiy meyyorlarning buzilishlariga yo‘l qo‘ymaslik;\nTadbirda va sport obektlarida qatnashayotgan vaqtda xavfsizlik talablariga rioya qilish;\nMazkur Nizom va tadbir tashkilotchilarining talablariga rioya qilish.",
      "5.7. Jamolarning o‘yin formalariga 1 dan 99 gacha bo‘lgan raqamlar tushirilgan 2 xil (och va to‘q) rangdagi o‘yin formalariga ega bo‘lishlari kerak va xar bir sportchida yomg‘irli va sovuq xavo uchun munosib kiyim bo‘lishi shart. "
    ]
  },
  {
    "title": "VI-Bob. Musobaqa o‘tqazish shartlari",
    "body": [
      "6.1. Musobaqalar shartlari “To‘p marrag o‘yini qoidalari” va O‘zbekiston Respublikasida amal qiladigan musobaqalar qoidalariga ko‘ra tashkilotchilar tomonidan belgilanadi.",
      "6.2. Musobaqalar o‘tkazildigan maydon “To‘p marrag o‘yini qoidalari” shartlariga javob kerishi kerak.",
      "6.3. Musobaqalar tasdiqlangan “To‘p marrga o‘yini reglamenti” va “O‘yinchining maqomi to‘risidagi reglamentlari”ga muvofiq o‘tqaziladi;",
      "6.4. O‘yinlar “To‘p marrga o‘yini qoidalari” bo‘yicha aralash (guruxli va chiqib ketsh) tizimi bo‘yicha o‘tqaziladi. Musobaqalarni o‘tqazish qur’a tashlash natijalariga ko‘ra taqsimlanadi.",
      "6.5. Guruxli bosqichda g‘olib bo‘lganligi uchun jamoa 3 ochkoga, xisob teng bo‘lganligi uchun 2 ochkoga, yutqazganligi uchun 1 ochkoga ega bo‘ladi, o‘yinga kelmaganligi yoki 2 daqiqadan ko‘p vaqtga kech qolganligi uchun jamoga 0-30 xisobi bilan mag‘lubiyat yoziladi va ochkolar berilmaydi;",
      "6.6. Gurux bosqichida jamolarning o‘rinlari guruxdagi barcha jamolar bilan o‘zaro uchrashuvlarda to‘plangan ochkolar bo‘yicha aniqlanadi. Ikki yoki undan ko‘p jamolarning ochkolari teng bo‘lgan xolda g‘olib quyidagi shartlar bo‘yicha aniqlanadi:\nJamolar bilan shaxsiy uchrashuvlar g‘olib yoki shaxsiy uchrashuvlarda to‘plangan turnir ochkolarining ko‘p miqdoriga ega bo‘lgan jamoa;\nShaxsiy uchrashuvlarda ochkolar teng bo‘lganda – ushbu jamolar o‘rtasidagi shaxsiy uchrashuvlarda eng ko‘p urinishlarni bajargan jamoa;\nShaxsiy uchrashuvlarda bajarilgan urinishlar soni teng bo‘lganda shaxsiy uchrashuvlarda ko‘p bora urinishlarni amalga oshirgan jamoa;\nShaxsiy uchrashuvlarda amalga oshirilgan urinishlarni soni teng bo‘lganda – musobaqaning barcha o‘yinlarida eng ko‘p urinishlarni bajargan jamoa;\nMusobaqaning barcha o‘yinlarida eng ko‘p urinishlarni amalga oshirishi umumiy miqdori teng bo‘lganda –musobaqalarning barcha o‘yinlarida chiqarib yuborilganlar eng kam bo‘lgan jamoa. Xar bir qizil kartochka 3 ta sariq kartichgaga tenglashtiriladi.",
      "6.7. Final bosqich o‘yinlari asosiy vaqt durrang natija bilan tugaganda, jamolardan birining birinchi natijalari ochkolarni to‘plagunga qadar 5 daqiqali 2 taym qo‘shimcha vaqt beriladi.",
      "6.8. O‘yinchilar murabbiylar va vakillarning maydonda xamda maydon tashqarisidagi intizomsiz xatti-xarakatlariga musobaqa jarayonini buzadigan, sportga xos bo‘lmagan qo‘pol xarakatlar sifatida qaraladi. Qizil kartochka olgan o‘yinchi avtomatik ravishda navbatdagi 1 o‘yinni o‘tqazib yuboradi. Bir uchrashuvning o‘zida ikkita ogoxlantirish (sariq kartochka) ni olgan o‘yinchi ikkkinchi ogoxlantirishdan keyin o‘yindan chetlatiladi va navbatdagi 1 ta o‘yinni o‘tqazib yuboradi.",
      "6.9. O‘yin maydoni “To‘p marrag o‘yini qoidalari”ga muvofiq barcha xafsizlik talablariga javob berishi kerak. ",
      "6.10. Musobaqa davrida yuzaga keladigan barcha nizoli masalalar uchrashuv tugaganidan so‘ng 30 daqiqa ichida yozma ravishda norozilik bosh xakamlar xayatiga topshirilgandan so‘ng ko‘rib chiqiladi. Og‘zaki sahkilda bildirilgan norozilik ko‘rib chiqilmaydi.",
      "6.11. Uchrashuvlarga tayinlangan xakamlarni almashtirish bo‘yicha jamoalar murojati va so‘rovlari qabul qilinmaydi va ko‘rib chiqilmaydi.",
      "6.12. Maydondagi xakam bilan o‘yin paytida faqat jamoa sardori muloqat qilish xuquqiga ega. Jamoa sardorining maydon xakamiga xar qanday murojatlari faqat savol tariqasida bo‘lishi kerak. Boshqa o‘yinchilar va jamoa vakillarining maydondagi xakamga, yon xakamlarga, uchrashuvga xizmat ko‘rsatuvchi xakamlarga murojat qilishi taqiqlanadi. Ushbu talablar buzilgan taqdirda xakam o‘yinni yakunlash xuquqiga ega.",
      "6.13. Agar uchrashuv jamolardan birining aybi bilan o‘tmagan yoki muddatidan oldin o‘yin tugagan bo‘lsa xodisa bosh xakam tomonidan ko‘rib chiqilib qoidabuzarlik aniqlanadi. Uchrashuvni buzgan jamoa 0-30 xisobi bilan mag‘lubiyatga uchragan deb xissoblanadi.",
      "6.14. Maydondagi xakam, yon xakam, xisobga oluvchi xakam, o‘yin kotibi, o‘yin inspektori, musobaqalarining bosh xakami va sport tadbirlarining o‘tqazish vaqtida uning o‘rinbosarlari daxlsiz shaxslar xisoblanadi. Sport tadbirlarini o‘tqazish vaqtida ushbu shaxslarga bosim o‘tqazish, ularga qaratilgan xarakatlar yoki so‘zlar bilan qilingan taxdidlar – bu jiddiy qoida buzarlik xisoblanadi. Ularga tegish bilan bog‘liq qoida buzarlik – o‘ta og‘ir qoidabuzarlik deb tasdiqlanadi.",
      "6.15. Ushbu Nizomning 6.12.-6.14. bandida tasvirlangan qoidabuzarliklar o‘yin oldidan yoki o‘yin paytida yoki o‘yindan keyen aniqlanganda o‘yin inspektori o‘yin natijasini bekor qilishi va g‘alabani ayibsiz jamoaga 30-0 xisob bilan berish orqali uchrashuvni muddatidan oldin tugatish xuquqiga ega. Quyidagi masalalar ko‘rib chiqlmaydi:\nO‘z vaqtida topshirilmagan norozilik (O‘yin tugagandan so‘ng 1 soatdan ko‘proq muddatda)\nO‘yinning rasmiy bayonnomasida qayd etilmagan norozliklar.\nXakamlik sifatiga, shu jumladan quyidagi sabablarga asoslanib norozilik bildirish: “o‘yindan tashqari” xolatni, “ustunlik pozitsiyasi”, “oldinga o‘ynash” xolatini notog‘ri aniqlash, jarimalar belgilash, o‘yinchilarga to‘g‘ri jazo belgilash.",
    ]
  },
  {
    "title": "VII-Bob. Ro‘yxatdan o‘tish",
    "body": [
      "8.1. Arizalarning asl nusxasi mandat kamissiyasiga toshirilishi kerak. Agar arizaning asl nusxasi, elektron shakilda taqdim etilgan nusxadan farq qilsa, jamoaning musobaqada ishtirok etishiga yo‘l qo‘yilmaydi.",
      "8.2. Xar qanday arizalar shifokorning (yoki tibbiyot muassasasining) imzo va muxir va muxirlagan jo‘natuvchi tashkilot raxbarlarining imzosi bilan tasdiqlanishi kerak. Ariza 1 nusxada tegishli shakilda taqdim etiladi.",
      "8.3. Mandat kamissiyasida xar bir jamoa raxbari (yoki vakili) shaxsan ishtirok etib, mandat kamissiyasiga arizaning asl nusxasi va musobaqada qatnashish uchun kelgan sportchilarning shaxsini tasdiqlovchi (sportchi pasporti, fuqorolik nasporti, xorijiy passport, ID-karta, yoki boshqa shaxsni tasdiqlovchi xujjat) xujatlarining asil nusxalari taqdim etishi shart. ",
      "8.4. O‘yin protokoli o‘yin boshlanishidan 1 soat oldin kechiktirmasdan to‘ldiriladi."
    ]
  },
  {
    "title": "XIII-Bob. Musobaqa g‘oliblarini taqdirlash",
    "body": [
      "9.1. Musobaqaning g‘olib va sovrindorlari I, II, III darajali diplomlar, medallar va estalik sovg‘alar bilan taqdirlanadi.",
    ]
  },
];

class NizomScreen extends StatelessWidget {
  static String route = "/nizom";
  const NizomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: text('Musobaqa Nizomi', accentColor),
        backgroundColor: backGroungColor,
      ),
      backgroundColor: backGroungColor,
      body: Container(
        padding: const EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Text(
                  '“To‘p marraga” o‘yini bo‘yicha 13-14 yoshli jamoalar o‘rtasida o‘tkazilayotgan musobaqa Nizomi',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      color: accentColor,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                for (dynamic item in nizom) ...{
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          item["title"],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(height: 10),
                        for (dynamic part in item["body"]) ...{
                          Text(
                            part,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(height: 5),
                          Divider(
                            color: Colors.grey.shade300,
                            height: 0.5,
                          ),
                          SizedBox(height: 5)
                        }
                      ],
                    ),
                  ),
                },
                SizedBox(height: 20),
              ],
            )),
      ),
    );
  }
}
