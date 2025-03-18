import 'package:flutter/material.dart';
import 'package:top/main.dart';
import 'package:top/screen/mark_down_reader.dart';
import 'package:top/screen/pdf_viewer.dart';

class Theory4PTrainersIntroScreen extends StatefulWidget {
  static String route = "/theory-4-trainers-intro";

  const Theory4PTrainersIntroScreen({super.key});

  @override
  State<Theory4PTrainersIntroScreen> createState() =>
      _Theory4PTrainersIntroScreenState();
}

class _Theory4PTrainersIntroScreenState
    extends State<Theory4PTrainersIntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroungColor,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: accentColor),
        title: Text("Murabbiylar uchun",
            style: const TextStyle(
                color: accentColor, fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: backGroungColor,
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: ClipRRect(
                  borderRadius: const BorderRadiusDirectional.only(
                      topStart: Radius.circular(50),
                      bottomEnd: Radius.circular(50)),
                  child: Image.asset("assets/images/training.png")),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(PDFViewerScreen.route, arguments: "rule"),
              child: Container(
                width: 300,
                alignment: Alignment(0, 0),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Musobaqa Qoidalari",
                  style: TextStyle(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () =>
                  Navigator.of(context).pushNamed(MarkDownReader4Referee.route),
              child: Container(
                alignment: Alignment(0, 0),
                width: 300,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: accentColor),
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: const Text(
                  "Hakamlar Jestlari",
                  style: TextStyle(
                      color: accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
