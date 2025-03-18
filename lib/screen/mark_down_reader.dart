import 'package:flutter/material.dart';
import 'package:top/main.dart';

class MarkDownReader4Referee extends StatefulWidget {
  static String route = "/referee-mark-down";
  const MarkDownReader4Referee({super.key});

  @override
  State<MarkDownReader4Referee> createState() => _MarkDownReader4RefereeState();
}

List referees = [
  {
    "image": "image4.jpg",
    "text": "Ochiq oʻyinda toʻsqinlik qilish (blokirovka)."
  },
  {"image": "image6.png", "text": "Uch metr masofaga rioya qilmaslik"},
  {
    "image": "image5.jpg",
    "text": "Tortishish (hakam qarorig norozilik bildirish)."
  },
  {
    "image": "image10.jpg",
    "text": "Himoyachi oʻyinchi tomonidan raqibni oyoqni chalish (podnojka)"
  },
  {"image": "image7.jpg", "text": "Urinish va jarima urinish"},
  {"image": "image14.jpg", "text": "Ustunlik"},
  {"image": "image12.jpg", "text": "Oldinga pas yoki oldinga oʻyin holati."},
  {"image": "image3.jpg", "text": "Musht bilan urish (qoʻpol oʻyin)."},
  {"image": "image15.jpg", "text": "«Oʻyindan tashqari» holat."},
  {"image": "image16.png", "text": "Ushlab qolish yoki itarish"},
  {
    "image": "image17.jpg",
    "text":
        "Aylanish — toʻp qoʻlida boʻlgan oʻyinchi raqibi uning tasmalarini uzib olishidan qochish uchun piruet harakat kabi atayin tanasi bilan aylanma harakatlar qiladi"
  },
  {
    "image": "image18.jpg",
    "text":
        "«Zaxvat» — bu himoyachi tomonidan toʻp ushlagan oʻyinchining bir yoki ikkita tasmasini yulib olish."
  },
  {"image": "image19.png", "text": "Zarba"},
  {"image": "image13.jpg", "text": "Oʻyin vaqtni vaqtincha toʻxtatish"},
  {
    "image": "image20.png",
    "text": "Yon chiziqdan toʻp otish yoʻlnalishini koʻrsatish"
  },
  {
    "image": "image21.png",
    "text":
        "Ogohlantirish (sariq kartochka va 2 daqiqaga chetlatish ) Diskvalifikasiya (qizil kartochka)"
  },
  {"image": "image9.png", "text": "Sust oʻyin uchun ogohlantirish"},
  {"image": "image13.jpg", "text": "Vaqtni toʻxtatish"}
];

class _MarkDownReader4RefereeState extends State<MarkDownReader4Referee> {
  String baseUrl =
      "https://gnfuncjcsczaqlftphym.supabase.co/storage/v1/object/public/rugby//";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backGroungColor,
        iconTheme: const IconThemeData(color: accentColor),
        title: Text(
          'Hakamlar Jestlari',
          style: TextStyle(
              color: secondaryColor, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      backgroundColor: const Color.fromRGBO(181, 247, 181, 1),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/screen.png"),
            Image.asset("assets/images/screen1.png"),
            Image.asset("assets/images/screen2.png"),
            SizedBox(height: 20),
            Text(
              "Hakamlik jestlari va ularning koʻrinishi",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20,),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            for (dynamic item in referees) ...{
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Image.network(
                        "https://gnfuncjcsczaqlftphym.supabase.co/storage/v1/object/public/rugby//${item["image"]}",
                        height: 150,
                        width: 150,
                        loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) {
                        return child;
                      }

                      return Center(
                        child: CircularProgressIndicator(
                          value: loadingProgress.expectedTotalBytes != null
                              ? loadingProgress.cumulativeBytesLoaded /
                                  (loadingProgress.expectedTotalBytes ?? 1)
                              : null,
                        ),
                      );
                    }, fit: BoxFit.cover),
                    Text(item["text"], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),textAlign: TextAlign.center,)
                  ],
                ),
              )
            }
          ],
        ),
      ),
    );
  }
}
